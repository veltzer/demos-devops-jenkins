#!/bin/bash -e
 
{ curl -sD /dev/stdout "http://ec2-52-41-142-136.us-west-2.compute.amazonaws.com:8080/api/json" || true; } | grep "X-Jenkins:"
