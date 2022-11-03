#!/bin/bash
#ADO Linux agent RHEL8

sudo dnf -y install wget 
wget https://vstsagentpackage.azureedge.net/agent/2.211.1/vsts-agent-linux-x64-2.211.1.tar.gz
mkdir myagent && cd myagent
tar zxvf ~/vsts-agent-linux-x64-2.211.1.tar.gz
./config.sh --unattended \
	--url https://dev.azure.com/likeabossmitko \
	--auth pat \
	--token pnpm3mqumktbt7lteoaxx4knzmaxnvxhno7c6du3imcpjatt7k3a \
	--pool RHELpool \
	--agent rhelpool02
	--acceptTeeEula
