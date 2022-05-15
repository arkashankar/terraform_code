#!/bin/bash
curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -
yum install -y nodejs
npm install -g serve
wget https://github.com/arkashankar/smart_bank_react_terraform/archive/refs/heads/main.zip
unzip main.zip
cd smart*
serve -s build