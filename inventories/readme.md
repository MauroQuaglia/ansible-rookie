* Facciamo i passi per gradi, dall'uno al quattro.

* Per ogni host dell'inventory posso specificare le variabili di quell'host nella directory __host_vars__
* Per ogni gruppo dell'inventory posso specificare le variabili di quel gruppo nella directory __group_vars__

* Il problema è che mettendo tutto in un unico file, poi quando si devono specificare le variabili dei gruppi non si riesce a farlo bene,
  e alcune machine ereditano anche accessi che non dovrebbero.

* Nel passaggio 4, invece viene bene.
* Pi fare production.ini, staging.ini, development.ini e poi o comandare tutto con il parametro `-i` che dice dove andare 
* a prendere l'inventory oppure specificando di volta in volta nel'ansible.cfg quel è il path dell'inventory.
* Ora possiamo dare ad ogni gruppo solo ciò che ci serve.
* Dato che sono dei dictionary è possibile accedere ai valori specificati nei file .yaml con cose del tipo `"{{  db.primary.host }}"`.

* Ad ogni passo che faccio un controllo se torna tutto con i comandi:
  * `ansible-inventory --graph`
  * `ansible-inventory --list`