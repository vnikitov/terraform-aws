#!/usr/bin/env python
import boto3
import os

os.chdir('/home/vladislav/s3-upload/')
bucketName = "tf-state-vlad"
files = os.listdir("~/home/vladislav/s3-upload/")

print files

s3 = boto3.client('s3')

for fname in files:
    s3.upload_file(fname,bucketName,fname)