#!/usr/bin/env bash

echo "--- Check the playbook syntax is valid ---"
ansible-playbook --syntax-check webservers.yml

echo " --- Hosts against playbook will run ---"
ansible-playbook --list-hosts webservers.yml

echo " --- Tasks of the playbook ---"
ansible-playbook --list-tasks webservers.yml

echo " --- Dry run the playbook ---"
# Prova ad eseguirlo per vedere se ci sono problemi, ma non fa nessun cambiamento sugli host remoti.
ansible-playbook --check webservers.yml

#vagrant validate

#echo "--- Inventory ---"
#ansible-inventory --graph --vars

#echo "--- Playbook ---"
#yamllint mezzanine.yaml




