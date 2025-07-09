##############
# parameters #
##############
# do you want to show the commands executed ?
DO_MKDBG:=0
# do you want dependency on the makefile itself ?!?
DO_ALLDEP:=1
# do spell check on all?
DO_MD_ASPELL:=1
# do you want to run mdl on md files?
DO_MD_MDL:=1
# do you want to lint python files?
DO_PY_LINT:=1
# do you want to check bash syntax?
DO_CHECK_SYNTAX:=1

########
# code #
########
# UNOPATH=UNOPATH="$(shell ls -d /opt/libreoffice*)"
# UNOPYTHON=$(UNOPATH)/program/python
UNOPATH=
UNOPYTHON=/usr/bin/python
UNOTIMEOUT=30
UNOWARNINGS=PYTHONWARNINGS="ignore::DeprecationWarning"

ALL:=

# silent stuff
ifeq ($(DO_MKDBG),1)
Q:=
# we are not silent in this branch
else # DO_MKDBG
Q:=@
#.SILENT:
endif # DO_MKDBG

# markdown
MD_SRC:=$(shell find exercises -type f -and -name "*.md")
MD_BAS:=$(basename $(MD_SRC))
MD_ASPELL:=$(addprefix out/,$(addsuffix .aspell,$(MD_BAS)))
MD_MDL:=$(addprefix out/,$(addsuffix .mdl,$(MD_BAS)))

# python
PY_SRC:=$(shell find exercises -type f -and -name "*.py")
PY_LINT:=$(addprefix out/,$(addsuffix .lint, $(basename $(PY_SRC))))

# shell
ALL_SH:=$(shell find exercises -type f -and -name "*.sh")
ALL_STAMP:=$(addprefix out/, $(addsuffix .stamp, $(ALL_SH)))

ifeq ($(DO_MD_ASPELL),1)
ALL+=$(MD_ASPELL)
endif # DO_MD_ASPELL

ifeq ($(DO_MD_MDL),1)
ALL+=$(MD_MDL)
endif # DO_MD_MDL

ifeq ($(DO_PY_LINT),1)
ALL+=$(PY_LINT)
endif # DO_PY_LINT

ifeq ($(DO_CHECK_SYNTAX),1)
ALL+=$(ALL_STAMP)
endif # DO_CHECK_SYNTAX

#########
# rules #
#########
.PHONY: all
all: $(ALL)
	@true

.PHONY: debug
debug:
	$(info doing [$@])
	$(info ALL is $(ALL))
	$(info MD_SRC is $(MD_SRC))
	$(info MD_BAS is $(MD_BAS))
	$(info MD_ASPELL is $(MD_ASPELL))
	$(info MD_MDL is $(MD_MDL))
	$(info ALL_SH is $(ALL_SH))
	$(info ALL_STAMP is $(ALL_STAMP))

.PHONY: clean
clean:
	$(info doing [$@])
	$(Q)rm -f $(ALL)

.PHONY: clean_hard
clean_hard:
	$(Q)git clean -qffxd

.PHONY: check
check:
	$(Q)git grep ' $$' -- "*.md" || true
	$(Q)git grep hours | grep -E "\.$$" || true
# $(Q)git grep '  ' -- "*.md" || true

.PHONY: subsection_stats
subsection_stats:
	$(Q)git grep -h '^## ' -- "*.md" | sort -u

.PHONY: spell_many
spell_many:
	$(info doing [$@])
	$(Q)aspell_many.sh $(MD_SRC)

############
# patterns #
############
$(MD_ASPELL): out/%.aspell: %.md .aspell.conf .aspell.en.prepl .aspell.en.pws
	$(info doing [$@])
	$(Q)aspell --conf-dir=. --conf=.aspell.conf list < $< | pymakehelper error_on_print sort -u
	$(Q)pymakehelper touch_mkdir $@
$(MD_MDL): out/%.mdl: %.md .mdlrc .mdl.style.rb
	$(info doing [$@])
	$(Q)GEM_HOME=gems gems/bin/mdl $<
	$(Q)pymakehelper touch_mkdir $@
$(PY_LINT): out/%.lint: %.py .pylintrc
	$(info doing [$@])
	$(Q)python -m pylint --reports=n --score=n $<
	$(Q)pymakehelper touch_mkdir $@
$(ALL_STAMP): out/%.stamp: % .shellcheckrc
	$(info doing [$@])
	$(Q)shellcheck --severity=error --shell=bash --external-sources --source-path="$$HOME" $<
	$(Q)pymakehelper touch_mkdir $@

##########
# alldep #
##########
ifeq ($(DO_ALLDEP),1)
.EXTRA_PREREQS+=$(foreach mk, ${MAKEFILE_LIST},$(abspath ${mk}))
endif # DO_ALLDEP
