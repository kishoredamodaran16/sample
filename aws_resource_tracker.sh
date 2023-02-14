#!/bin/bash

####################
#Author: Kishore
#Date: 14th Feb
#Version: v1
#
#This script will report the aws resource usage
####################

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users
set -x

#list s3 buckets
echo "print list of s3 buckets"
aws s3 ls > resourcetracker

#list ec2 instances
echo "print list of ec2 instances"
aws ec2 describe-instances >> resourceTracker

#list aws lambda 
aws lambda list-functions

#list aws iam users
aws iam list-users

