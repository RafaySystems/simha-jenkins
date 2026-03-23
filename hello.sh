#!/bin/bash

echo "Hello from Git Repo 🚀"
aws sts get-caller-identity
aws ssm send-command \
  --instance-ids i-0e38286eeff640732 \
  --document-name "AWS-RunShellScript" \
  --parameters commands=["whoami","pwd"] \
  --region us-west-1 \
  --profile dev-noc
date
testbed-create-onprem
