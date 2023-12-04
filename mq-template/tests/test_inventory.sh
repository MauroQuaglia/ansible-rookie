#!/usr/bin/env bash
echo "Groups and Hosts are OK?"
ansible-inventory -i ./../inventory/hosts.ini --graph
