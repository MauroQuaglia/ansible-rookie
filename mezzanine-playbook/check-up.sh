#!/usr/bin/env bash

ansible-playbook --list-tasks mezzanine.yaml

echo "--- Vagrant ---"
vagrant validate

echo "--- Inventory ---"
ansible-inventory --graph --vars

echo "--- Playbook ---"
yamllint mezzanine.yaml
ansible-playbook --syntax-check mezzanine.yaml



