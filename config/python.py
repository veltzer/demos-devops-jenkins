""" python deps for this project """

build_requires: list[str] = [
    "pydmt",
    "pymakehelper",

    "pylint",
    "pytest",
    "mypy",
    "ruff",
    # types
]
requires = build_requires
