#!/usr/bin/env python3.6
import boto3

def execute_commands_on_linux_instances(client, commands, instance_ids):
    resp = client.send_command(
        DocumentName="AWS-RunShellScript", # One of AWS' preconfigured documents
        Parameters={'commands': commands},
        InstanceIds=instance_ids,
    )
    return resp

# Example use:
ssm_client = boto3.client('ssm') # Need your credentials here
commands = ['echo "hello world"']
instance_ids = ['i-0185b7f444a35e008']
execute_commands_on_linux_instances(ssm_client, commands, instance_ids)
