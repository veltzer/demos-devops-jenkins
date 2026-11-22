# Dependencies between Jenkins jobs

* Create two jenkins jobs A and B and have A depend on B.

* This means that if you trigger a build of A, then first B is built and only
then A is built.

* If you trigger build of B, then A *IS NOT* built.

Hint:

* Build triggers
