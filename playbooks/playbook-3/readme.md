# Test su come funzionano le gather_facts.
* Raccolta di informaioni dagli host remoti, prima di eseguire i task del playbook.
* Interessante per fare cose dinamiche o per decidere cosa installare in base per esempio al SO dell'host remoto.
* Per i miei interessi è pure troppo ma vale la pena dargli una occhiata.
* In questo caso ho anche diviso per bene l'inventory (che contiene solo gli alias delle maccine) e tutte le variabili comuni e specifiche sono nei relativi file
  sotto group_vars e host_vars.
* Tiro su le macchine e faccio un `ansible all -m  ping` per controllare.
