# Jenkins and EC2

* The idea of this exercise is to connect jenkins to EC2 and have jenkins run agents on EC2 machines.

[the Jenkins EC2 plugin](https://plugins.jenkins.io/ec2)

* install EC2 plugin to jenkins
* configure it properly (this will require creating key and secret for the agent via IAM)
* configure which machine profiles it should use to launch new machines
* configure limits (max and min)
* finally, see it all work.
