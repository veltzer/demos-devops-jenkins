# Parallel Pipelines

The idea behind this exercise is to run pipelines in parallel.

* Create a jenkins pipeline which does two stages
  (sleep?) in sequence.
  Show that it works. (by activating the build manually).
  Write the sleep either in Groovy or in shell.

* Modify your pipeline to do two things in parallel
  (sleep?). Find out on your own how to do it.
  Show that it works. (by activating the build manually).

* Install (or check that it's already installed) the `ocean-ui` plugin to visualize the
  parallel execution (Not a must, nice to have)

Notes:
* Remember to have at least 2 executors so that stuff will actually run in parallel.
* Have a few stages in each of the pipelines (to simulate a real work complex project)
* For the time, still use the "any" executor.
