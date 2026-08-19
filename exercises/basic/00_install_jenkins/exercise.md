# Install Jenkins

* install jenkins in the following ways:
    * docker
      follow the instructions on the jenkins website.
      You will need to install docker, configure it properly.
    * war file
      use

        ```shell
        java -jar [file.war]
        ```

        The war file can be downloaded from [the Jenkins download page](https://www.jenkins.io/download)
        You will need to install java if you don't already have it.
    * from binary distribution
      download, unzip and run
      You will need to install java if you don't already have it.
    * using your package manager.
      This will require you to add a repository and install jenkins
      from that repository.

    * Once You have installed jenkins open [your Jenkins instance](http://your_ip:8080) in your browser

* play around with the GUI.

## Installing from an apt repository
Consult [this](https://www.jenkins.io/doc/book/installing/linux) URL
under "Long Term Support Release"
and follow the instructions for installing jenkins on Ubuntu.

Because of signing issues you may need to do:

```shell
sudo apt-get update --allow-unauthenticated
```

or

```shell
sudo apt-get update --allow-insecure-repositories
```

the command:

```shell
sudo apt-get install jenkins`
```

should pass with no issues if you did everything correctly.

You will need to install java
install openjdk version 11 like so:

```shell
sudo apt-get install openjdk-11-jdk:amd64`
```

so

```bash
java --version
```

should return:
    openjdk version "11.0.18" 2023-01-17
    OpenJDK Runtime Environment (build 11.0.18+10-post-Ubuntu-0ubuntu122.10)
    OpenJDK 64-Bit Server VM (build 11.0.18+10-post-Ubuntu-0ubuntu122.10, mixed mode, sharing)
If you have more than one java installed you can select version 11 using:

```shell
sudo update-alternatives --config java
```

## Instructions for people who cannot reach their cloud machine at port 8080
* You must be connected with MobaXterm to do this.

* install Firefox on your remote machine:

```shell
sudo apt install firefox
```

* run Firefox in the background

```shell
firefox &
```

* Firefox should, after the appropriate wait time, appear on your windows desk

* Point your Firefox to [this](http://localhost:8080)
