# `Java and Maven` for jenkins

* find a docker image in docker.hub which contains both java JDK and maven.

* run a "hello world" type pipeline with that image.

* create a public repo on github.com which has three files:
  `pom.xml`
  `src/HelloWorld.java`
  `Jenkinsfile`

* create and run a pipeline on that repository.

```groovy
pipeline {
    agent {
        docker {
            image '... your java and maven image ...'
        }
    }
    stages {
        stage('compile') {
            steps {
                sh 'mvn compile'
            }
        }
    }
}
```
