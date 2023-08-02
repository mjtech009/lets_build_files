#!/bin/bash -ex
rm -rf apply_logs.*
timestamp=$(date +"%Y-%m-%d-%H-%M-%S")
log_file="apply_logs_$timestamp.txt"
exec &> "$log_file"
curl \
  --header "Authorization: Bearer $TF_API_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  https://app.terraform.io/api/v2/applies/apply-47MBvjwzBG8YKc2v
