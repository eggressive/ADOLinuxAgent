#!/bin/bash
# ADO Linux agent RHEL8
# https://github.com/eggressive/ADOLinuxAgent.git

sudo dnf -y install wget
wget https://vstsagentpackage.azureedge.net/agent/2.211.1/vsts-agent-linux-x64-2.211.1.tar.gz
mkdir myagent && cd myagent
tar zxvf ~/vsts-agent-linux-x64-2.211.1.tar.gz
./config.sh --unattended \
        --url https://dev.azure.com/likeabossmitko \
        --auth pat \
        --token <PAT> \
        --pool RHELpool \
        --agent rhelpool03
sudo ./svc.sh install
sudo ./svc.sh start
