# Github workflow

The objective is to see how CICD is done at GitHub

* Create an account on GitHub (if you don't already have one)

* Create a repository on GitHub

* Put some python code with tests into your repository.
  [example](https://github.com/veltzer/demos-jenkins/tree/master/pytest_example)

* Write a workflow file named `build.yml` and put it into:
  `$REPO_ROOT/.github/workflows/build.yml`
  In the workflow, test your software.

* Push your code to GitHub and under "actions" see how the code builds.

* See what happens when tests pass and what happens when tests fail.

* Add a README.md file at the root of your git repository and add flag there to indicate
  the status of your build (building/failing).
