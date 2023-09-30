#! /bin/bash

set -x

echo "list of ec2 instances and it's instance id"
aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --query "Reservations[].Instances[].InstanceId"

echo "list of s3 buckets"
aws s3 ls

echo "list of iam users"
aws iam list-users
