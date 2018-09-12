#!/usr/bin/env python3.6
import boto3
import os
import sys

os.chdir('/home/vladislav/s3-upload')
#local_dir = ('/home/vladislav/s3-upload/')
bucketName = "s3-files-vlad"
#files = glob.glob('/home/vladislav/s3-upload/**/*', recursive=True)
#print (files), 'will be uploaded to S3'

s3 = boto3.client('s3')

for dirpath, dirs, files in os.walk('/home/vladislav/s3-upload/'):
  for fname in files:
    s3.upload_file(dirpath+ '/' + fname, bucketName, fname)