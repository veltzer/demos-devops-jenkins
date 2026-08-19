# Jenkins and Docker

The idea behind this exercise is to run pipelines in docker.

* Install the `Docker Pipeline` plugin.

* change the `agent` clause in your Jenkinsfile to something like this:

```groovy
agent {
    docker { image '[put_your_image_name_here]' }
}
```

* Select a docker image from docker hub which has slim python (`python:3-alpine`)

* Configure the pipeline to run inside this docker
  (all you need to change is the `agent` line)

* Check that you can run the build inside docker

* Here is how to build the docker image on the jenkins machine command line:
    * create a new folder
    * in the new folder create a file called Dockerfile with the following content:
      `FROM python:3-alpine
      RUN pip install pytest`
    * build the docker image with the command:
      `docker build --tag python_with_pytest .`
    * see that your image was built using:
      `$ docker images`

* to install docker on your machine use:
`$ sudo apt install docker.io`

* to add a user to the docker group so that he will be able to use docker use:

```shell
sudo adduser $USER docker`
```

and logout and login.

* to support docker at the jenkins level add the `Docker Pipeline` plugin and restart jenkins.

* to restart your jenkins if you are running it with `java -jar jenkins.war`:
find the pid of the java jenkins process
`ps -ef | grep java`
kill the process with
`kill -9 [PID]`
run it again:
`java -jar jenkins.war &`

* to make your pipeline run in a docker container add the following line to it:

```groovy
agent { docker { image 'python_with_pytest:latest' } }
```

References:
* [docker pipeline](https://www.jenkins.io/doc/book/pipeline/docker)
