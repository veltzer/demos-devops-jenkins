#!/usr/bin/env python3
 
user="veltzer"
token_value="115b34c6c33fcd4d094a3008dd56137dba"
token_name="marks_token"
url="ec2-52-41-142-136.us-west-2.compute.amazonaws.com"
port="8080"
protocol="http"
job_name="mv_pytest"

import requests
from urllib.parse import urlencode


url=f"{protocol}://{user}:{token_value}@{url}:{port}/job/{job_name}/build?token={token_name}"
r = requests.post(url, timeout=5)
assert r.status_code == 200
