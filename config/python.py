""" python deps for this project """

build_requires: list[str] = [
    "pydmt",
    "pymakehelper",

    "pylint",
    "pytest",
    "pytest-cov",
    "mypy",
    # types
]
requires = build_requires
