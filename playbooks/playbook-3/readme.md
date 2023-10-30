# Test su come funzionano le gather_facts.
* Raccolta di informaioni dagli host remoti, prima di eseguire i task del playbook.
* Interessante per fare cose dinamiche o per decidere cosa installare in base per esempio al SO dell'host remoto.
* Per i miei interessi è pure troppo ma vale la pena dargli una occhiata.
* In questo caso ho anche diviso per bene l'inventory (che contiene solo gli alias delle maccine) e tutte le variabili comuni e specifiche sono nei relativi file
  sotto group_vars e host_vars.
* Tiro su le macchine e faccio un `ansible all -m ping` per controllare.
* Per vedere tutte le gather fact non è che mi serve necessariamente un playbook, lo posso fare direttamente anche con il comando ansible: `ansible all -m setup`
  oppure anche su una singola macchine: `ansible vagrant-one -m setup`
* Visto che il comando precedente torna una marea di roba, lo stesso comando support anche i filtri, per esempio: `ansible all -m setup -a 'filter=ansible_env'`
  * Che torna tutte le variabili di ambiente sulle macchine. 

