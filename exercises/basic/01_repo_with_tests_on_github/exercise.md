# Repo with tests on Github

* if you don't have a GitHub account - open one
* open a repo to play with (call it `test`) and make it public so that you will not
  have to provide credentials or keys for Jenkins to access it.
* add some python code to your repo, for example,
  add a python function called add(a,b) in a file called add.py that returns a+b
* add a test to your code using pytest or unittest (look it up).
  check that `add(2,2)==4`
* push you code to you GitHub repo.
* Configure a pipeline job in jenkins and connect it to your GitHub repository.
  Tell the pipeline to use the "Jenkinsfile" in your source repository.
* Tell jenkins how to run you tests by placing the appropriate `Jenkinsfile`
  at the root of your repository and telling it how to run your python tests.
* Run a jenkins job and see how jenkins pulls your code from GitHub and tests it.
  (This is done from the Jenkins GUI).
* You may need to install `pytest` on your machine so that jenkins could use it.

Hints:
* here is a python function that adds two integers and returns their sum
  `add.py`

```python
def add(a, b):
    return a+b
```

* here is a test for that function:
  `tests/test_add.py`

    ```python
    from add import add
    def test_add():
        assert add(2,2)==4
    ```

* to install pytest use:
  `$ pip install pytest`
