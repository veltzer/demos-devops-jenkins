# Connect Github to Jenkins

The idea of this exercise is that every push to
your GitHub repo will cause jenkins to rerun your pipeline (tests).

short description
You will have to configure this at BOTH ENDS.
    * configure GitHub to send notifications to your jenkins when the source code changes.
    * configure jenkins to respond to such notifications by running the pipeline.

* you can find plenty of guides on how to configure both GitHub and jenkins.

long description

Phase 1
create a GitHub repo with some python code and some testing code for that python code.
show that you can run the tests using pytest.

Phase 2
run a jenkins server and configure it to poll your GitHub repository and test whenever
necessary. create a "pipeline" type object in jenkins and configure it properly.

hints
* look for guides on the internet about how to connect a jenkins pipeline to a GitHub repository.
* look for guides on the internet about how to test python code with Jenkins.

Phase 3
Make sure that the outside world can access your Linux box on port 80
You may need to:
    * configure your router
    * configure your hypervisor to transfer port 80 requests to your Linux virtual machine.
    * you may need to open the port in either your windows firewall or your Linux firewall or both.

Phase 4
Configure GitHub to send a message to your jenkins whenever a commit is done (there are guides for this
over internet - look for GitHub/jenkins integration)
Configure Jenkins to receive such message and deactivate the polling you configured in phase 2
Push and enjoy (you should see jenkins run tests automatically on every push to GitHub).

## References

* [BlazeMeter: how to integrate your GitHub repository with Jenkins](https://www.blazemeter.com/blog/how-to-integrate-your-github-repository-to-your-jenkins-project)
