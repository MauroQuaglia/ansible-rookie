* Ne uso due di playbook perché uno è lanciabile con il classico comando dell'`ansible-playbook` e l'altro viene usato come
provisioning lato Vagrantfile.
* Non sono uguali perché per esempio quello che lancio dalla control-machine ha bisogno dei `gather facts` e l'altro essendo eseguito direttamente
sulla macchina VM no.
* Vale la stessa cosa in caso di copy, se fatta da `control-machine a VM` oppure da `VM a VM`, servono dei comandi diversi, tipo `remote_src`.