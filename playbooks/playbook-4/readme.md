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
* Se lo stesso file del ruolo è molto lungo si possono usare gli `include_tasks`, come ho fatto per esempio per nginx.

* __NB__
* Quando usiamo i moduli `copy`, `script` o `template`.
* C'è differenza per i task definiti in un ruolo o quelli definiti in un playbook.
* Quando per esempio lancio una `copy` da un ruolo, il file viene prima cercato nei file del ruolo e poi nel playbook... in realtà cerca anche in altri path poi.

# __Galaxy__
* https://galaxy.ansible.com
* `ansible-galaxy role init --init-path ./roles web`
* `ansible-galaxy install oefenweb.ntp -p path-dove-voglio-installare` per installare un ruolo.

* Le dependencies permettono di eliminare la duplicazione e eseguire un ruolo all'interno di un ruolo. Vanno specificati nei meta
  e questi ruoli vengono eseguiti per primi.