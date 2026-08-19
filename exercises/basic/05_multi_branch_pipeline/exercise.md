# Multi Branch Pipeline

The idea behind this exercise is to have jenkins do different things for different branches.

You should use the "multibranch" jenkins project for this

See [the multibranch pipeline documentation](https://www.jenkins.io/doc/book/pipeline/multibranch)

* Connect this project to one of your GitHub repo.

* Create a branch called "feature_x" in your GitHub repo.

* Configure jenkins to run "Jenkinsfile" when there are commits to the "master/main" branch

* Configure jenkins to run "Jenkinsfile_feature" when there are commit to any branch called "feature_*"
