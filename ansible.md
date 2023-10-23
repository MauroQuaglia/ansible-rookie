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
* Ansible scrive sul syslog del server. 


# Inventory
* A ogni server viene dato un nome che Ansible usa per identificarlo, di norma l'hostname del server. Per esempio il 
  nostro server di Vagrant lo possiamo chiamare testserver.
* Possiamo usare il modulo __ping__ di ansible per vedere se riusciamo a comunicare con il server: `ansible testserver -i inventory/vagrant.ini -m ping`
* Se qualcosa non funziona possiamo usare la modalita verbosa con l'opzione `-vvvv`.

# ansible.cfg
* Nell'ordine viene cercato:
  * Variabile di ambiente `ANSIBLE_CONFIG`
  * Nella directory corrente da dove si lancia il comando
  * Nella home directory
  * In `/etc/ansible/ansible.cfg`

  
# playbook
* Per capire se ho installato (sulla control-machine) un modulo e come usarlo: 
 * `ansible-doc -l`. Per esempio se vogliamo avere lumi sul modulo "service":  `ansible-doc service`
* Per vedere tutti i server configurati e raggruppati: `ansible-inventory --graph`
* Per verificare la sintassi corretta del playbook: `yamllint webservers.yml` 
