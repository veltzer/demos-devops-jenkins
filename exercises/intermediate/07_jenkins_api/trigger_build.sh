#!/bin/bash -e
 
user="mark"
token_value="11d18a4cd68d83d4f53567707133f1bf6c"
token_name="marks_token"
url="localhost"
port="8080"
protocol="http"
job_name="my_pipeline"
if [[ "${protocol}" = "http" ]]
then
	EXTRA_ARGS=(--insecure)
else
	EXTRA_ARGS=()
fi
curl "${EXTRA_ARGS[@]}" -X POST "${protocol}://${user}:${token_value}@${url}:${port}/job/${job_name}/build?token=${token_name}"
