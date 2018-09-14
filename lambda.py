#!/usr/bin/env python3.6
import boto3

get_last_modified = lambda obj: int(obj['LastModified'].strftime('%s'))

s3 = boto3.client('s3')
objs = s3.list_objects_v2(Bucket='s3-files-vlad')['Contents']
[obj['Key'] for obj in sorted(objs, key=get_last_modified)]
print (objs[0])

def execute_commands_on_linux_instances(client, commands, instance_ids):
    resp = client.send_command(
        DocumentName="AWS-RunShellScript", # One of AWS' preconfigured documents
        Parameters={'commands': commands},
        InstanceIds=instance_ids,
    )
    return resp

# Example use:
ssm_client = boto3.client('ssm') # Need your credentials here
commands = [f'echo "{objs}" was uploaded to S3 >> /var/log/custom_log_file']
print (commands[0])
instance_ids = ['i-0185b7f444a35e008']
execute_commands_on_linux_instances(ssm_client, commands, instance_ids)
