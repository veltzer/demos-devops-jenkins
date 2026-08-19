# Jenkins and EKS deployment

The idea of this exercise is to have a Jenkins pipeline that deploys a Kubernetes application
on an EKS cluster.

Phase1 - deploy an EKS cluster and being able to talk to it using `kubectl`

[getting-started](https://docs.aws.amazon.com/eks/latest/userguide/getting-started.html)

* create an EKS cluster with a minimum number of machine.
  We will need at least 3.
  You may need to install `eksctl` for that.

* talk to the cluster with `kubectl`
  That means you need to get to a situation that you are able to run these commands,
  and you see that no pods or services are currently deployed...
  `$ kubectl get services                          # List all services in the namespace`
  `$ kubectl get pods --all-namespaces             # List all pods in all namespaces`
  `$ kubectl get pods -o wide`

Phase2 - learn how to deploy nginx to a k8s cluster and deploy one pod with nginx to the cluster
    *MANUALLY*
    Use `kubectl` for this
    See that you nginx pod is running by connecting to it with a browser.
    Undeploy your pod

Phase3 - use a jenkins pipeline (freestyle) to do the same thing you did in phase2 but not manually
    but rather from a Jenkins project.

Phase4 - In this phase deploy *TWO* nginx pods and ask k8s to create a "service" with a load balancer
    to load balance the traffic between the two pods.
    All of this needs to be done from a Jenkins project (of course).
