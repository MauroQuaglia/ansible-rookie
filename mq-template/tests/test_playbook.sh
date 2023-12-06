#!/usr/bin/env bash

# Sintassi YAML del playbook
echo "YAML Lint START"
yamllint ./../webservers.yml
echo "YAML Lint END"

echo "ANSIBLE Lint START"
ansible-playbook --syntax-check ./../webservers.yml
echo "ANSIBLE Lint END"

echo "ANSIBLE hosts START"
ansible-playbook --list-tasks ./../webservers.yml
echo "ANSIBLE hosts END"