* Questo esempio è fatto in modo che non ci si debba appoggiara alla configurazione locale del file `./ssh/config`.
* Sta tutto nelle variabili dichiarate nell'inventory.

* Tiro su le macchine vagrant.
* Lancio il playbook: `ansible-playbook webservers.yml`
* Poi posso anche testare il risultato: `ansible-playbook tests/verify.yml`

* Sono riuscito anche ad utilizzare l'utente xpuser invece dell'utente vagrant per fare girare il playbook.
* `ansible_user: "xpuser"`
* `ansible_ssh_private_key_file: "/home/xpuser/.ssh/id_rsa"`
* Poi mi devo connettere alle macchine VM e:
  * Creare utente `xpuser` con `adduser`.
  * Creare la direcory `.ssh` con il file delle `autorized_keys` (permessi giusti a directory e file) e metterci la mia chiave pubblica di `xpuser`.
* Dopo aver testato che funziona: `ssh xpuser@127.0.0.1 -p 1622 -i /home/xpuser/.ssh/id_rsa`
* Posso lanciare il playbook

* OSS:
* `ansible_user: "vagrant"`: Utente Remoto, deve esistere sulle macchine remota non necessariamente sulla mia CM.
* `ssh remote_user@remote_machine` (non si esplicita l'utente sulla CM da cui viene lanciato il comando)
* Le chiavi pubbliche e private sono per l'utente infatti sono memorizzate nella directory dell'utente.