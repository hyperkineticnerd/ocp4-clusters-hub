#!/usr/bin/env bash

declare key=~/.ssh/id_rsa_openshift_nodes
declare workers=(172.16.140.1)

for server in "${servers[@]}"; do
    ssh -i ${key} core@${server} sudo systemctl enable --now cni-dhcp.service
done
