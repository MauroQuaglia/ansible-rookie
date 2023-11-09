#!/usr/bin/env bash

echo "--- Check the playbook syntax is valid ---"
ansible-playbook --syntax-check webservers.yml

echo " --- Hosts against playbook will run ---"
ansible-playbook --list-hosts webservers.yml

echo " --- Tasks of the playbook ---"
ansible-playbook --list-tasks webservers.yml

# echo " --- Dry run the playbook ---"
# Prova ad eseguirlo per vedere se ci sono problemi, ma non fa nessun cambiamento sugli host remoti.
# In realtà il Dry Run è abbastanza problematico perché alcuni task potrebbero dipendere da task precedenti.
# Inoltre non tutti i moduli supportano il dry run.
# Per cui alla fine non eseguiamolo e basta.
# ansible-playbook --check webservers.yml

echo " --- Validate Vagrantfile ---"
vagrant validate

echo "--- Inventory list and vars ---"
ansible-inventory --graph --vars

echo "--- Playbook YAML lint ---"
yamllint webservers.yml




