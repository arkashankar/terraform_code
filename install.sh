#!/bin/bash
yum install -y java
yum install -y amazon-cloudwatch-agent
wget https://github.com/arkashankar/smart_bank_aws1/archive/refs/heads/main.zip
unzip main.zip
cd smart*
cp *.json /opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json
/opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c file:/opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json
java -jar smart-bank-api.jar &