* I Role servono per scalare sul Playbook non sul numero degli host.
  * Quando un Playbook diventa lungo e complesso possiamo affidarci ai Role.
* Non dobbiamo necessariamente tenere tutte le directory che di base ci sono sotto a un ruolo (vedere il ruolo `example`), possiamo
  tenere anche solo quelle che ci servono e basta.
* I ruoli vengono cercati:
  * Nella directory del playbook
  * in `/etc/ansible/roles`
  * Possiamo customizzare la ricerca di un ruolo nell'`ansible.cfg` con la `role_path`
  * Possiamo usare la variabile di ambiente `ANSIBLE_ROLES_PATH`

* Si possono usare pre_task e post_task da eseguire prima o dopo un ruola.
* Dato che Ansible non sfruta l'idea dei namespace, all'interno di un ruolo è sempre meglio prependere il nome del ruolo ai 
  nomi delle variabili, in modo da evitare possibili conflitti.