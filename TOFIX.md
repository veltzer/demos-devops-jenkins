# TOFIX

Findings from a code scan on 2026-10-04.

## High

- `exercises/intermediate/07_jenkins_api/trigger_build.py:10` - real-looking Jenkins API tokens are committed in plain text here, in `exercises/intermediate/07_jenkins_api/get_job_config_xml.sh:3` and in `exercises/intermediate/07_jenkins_api/trigger_build.sh:4` (plus a concrete EC2 host name). Revoke the tokens and replace them with placeholders read from the environment (e.g. `JENKINS_TOKEN`).

## Medium

- `exercises/intermediate/07_jenkins_api/trigger_build.py:21` - asserts `status_code == 200`, but Jenkins answers a successful `POST /job/<name>/build` with `201 Created`, so the script reports failure on success. Check `r.ok` / accept 201.
- `exercises/basic/11_github_workflow/exercise.md:10` - the example link points to `veltzer/demos-jenkins/tree/master/pytest_example`; the repo is now `demos-devops-jenkins` and `pytest_example/` was removed in the "reorg" commit (a04edc8), so the link is dead. Point it at `exercises/intermediate/08_freestyle_project` (which has `mod_add.py`/`test_add.py`) or restore the example.
- `exercises/basic/00_install_jenkins/exercise.md:52` - tells students to install OpenJDK 11 for the apt-installed LTS Jenkins; current Jenkins LTS releases require Java 17 or 21 and will not start on 11. Update to `openjdk-17-jdk`/`openjdk-21-jdk` and refresh the sample `java --version` output (lines 65-67).
- `exercises/basic/00_install_jenkins/exercise.md:34` - recommends `apt-get update --allow-unauthenticated` / `--allow-insecure-repositories` to get around "signing issues", i.e. disabling package signature checks. Replace with the correct key import from the Jenkins install page.
- `exercises/intermediate/03_one_pipeline_two_branches/Jenkinsfile:12` - the solution matches `origin/test`, but the exercise (`exercise.md:3`) asks for a branch called `feature`; the "feature" branch only hits the default case. Use `origin/feature`.

## Low

- `exercises/basic/00_install_jenkins/exercise.md:46` - stray trailing backtick inside the code block (`sudo apt-get install jenkins\``), same at line 55; students copying the command get a shell continuation prompt.
- `exercises/basic/13_java_and_maven/exercise.md:9` - says the repo should contain `src/HelloWorld.java`, but Maven only compiles `src/main/java/...` (the solution uses `src/main/java/com/company/HelloWorld.java`). Fix the path.
- `exercises/basic/13_executing_in_docker/exercise.md` - two exercises share number 13 (`13_executing_in_docker`, `13_java_and_maven`); renumber so the sequence is unambiguous.
- `exercises/intermediate/07_jenkins_api/trigger_build.sh:10` - adds `--insecure` when the protocol is `http`; `--insecure` only affects TLS certificate checks, so the condition is backwards (it is a no-op for http and missing for https with a self-signed cert).
- `exercises/intermediate/08_freestyle_project/Jenkinsfile:7` - the "freestyle" exercise ships a pipeline Jenkinsfile that checks out a third-party repo (`shlomihaimov/tests`, branch `*/master`) instead of the `mod_add.py`/`test_add.py` next to it; point it at the local example or drop it.
