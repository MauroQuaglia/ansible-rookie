* Questo esempio è fatto in modo che non ci si debba appoggiara alla configurazione locale del file `./ssh/config`.
* Sta tutto nelle variabili dichiarate nell'inventory.

* Tiro su le macchine vagrant.
* Lancio il playbook: `ansible-playbook webservers.yml`
* Poi posso anche testare il risultato: `ansible-playbook tests/verify.yml`
