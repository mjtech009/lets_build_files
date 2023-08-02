#!/bin/bash -ex

timestamp=$(date +"%Y-%m-%d-%H-%M-%S")
log_file="script_log_$timestamp.txt"
exec &> "$log_file"


curl --header "Authorization: Bearer $TF_API_TOKEN" \
     --header "Content-Type: application/vnd.api+json" \
     --request PUT \
     --data @JSON \
     "https://app.terraform.io/api/v2/organizations/$ORGANIZATION/workspaces/$WORKSPACE"
