#!/bin/bash -e
 
token="115b34c6c33fcd4d094a3008dd56137dba"
curl -sD /dev/stdout -H "Authorization: Bearer ${token}" "http://ec2-52-41-142-136.us-west-2.compute.amazonaws.com:8080/job/mv_pytest/config.xml"
