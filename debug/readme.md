* Aggiungere `stdout_callback = debug` al `ansible.cfg` per ottenere informazioni più leggibili.
* Per esempio se faccio `vagrant suspend` e faccio girare il playbook la macchina diventa UNREACHABLE!
* Per provare a connettermi con SSH: `ssh vagrant@127.0.0.1 -p 2201 -i /home/xpuser/mauro-quaglia/ansible-rookie/debug/.vagrant/machines/vagrant-1/virtualbox/private_key`
* Usare il -vvv per esempio in `ansible vagrant -vvv -m ping` per vedere come e con quali parametri ansible si connette in SSH.
* Posso usare il debugger che è molto potente:
  * https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_debugger.html
* Si possono anche fare degli assert, ma bisogna ricordare che il codice dell'assert non si scrive in Python ma in Jinja2.
* Per lo status dei file ci possono essere molte cose.
 * "Leghiamo" una statistica al file e poi la mostriamo.
 * Vedere l'esempio.

# Per eseguire il playbook passo a passo
* Per eseguire un task alla volta `ansible-playbook my-playbook.yaml --step`
* Per partire da un certo punto in poi `ansible-playbook --start-at-task "Run and ignore failure but print the error" gather.yaml` 
* Per eseguire solo alcuni task taggati (+) `ansible-playbook --tags      tag1,tag2 gather.yaml` 
* Per eseguire solo alcuni task taggati (-) `ansible-playbook --skip-tags tag1,tag2 gather.yaml` 
