# Ansible
* Usa Python
* Usa [Jinja2](http://oreil.ly/LAXa7) (.j2) come motore di template per Python.
* Gli attori sono:
  * La Control Machine: che deve avere installato Python
  * I server: che devono avere installato Python e SSH
* E' idempotente: se non c'è crea, se c'è già non fa nulla.
* Fa connessioni SSH multiplexing (1 sessione, + trasferimenti di dati) in parallelo.
* Generea degli script di Python che copia sui server e poi li esegue per portare a compimento il task.
* Aspetta che l'esecuzione di un task sia finita su tutti i server prima di eseguire il task successivo del playbook.