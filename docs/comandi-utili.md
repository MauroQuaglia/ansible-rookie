# Comandi utili
* `ansible --version`
* `ansible-playbook development.yml --check`

* Il comando `ansible` può essere utile una-tantum per verificare che posso connettemi ai server con Ansible. 
* Tuttavia è un comando potente che può essere sfruttato anche per lanciare dei __moduli__ sui server.
  * `-m = modulo`, `-a = argument`
  * `ansible testserver -m command -a "uptime"` (l'inventory è nel config quindi posso non specificarlo)
  * `ansible testserver -a "uptime"` (il command è il modulo di default)
  * Le `""` sempre meglio specificarle per fare prendere l'intero comando nel caso ci fossero degli spazi nel comando da mandare al server: `ansible testserver -a "echo 'ciao'"`
  * Il `-b = --become` permette ad ansible di diventare l'utente root del server.
    * `ansible testserver -b -a "tail /var/log/syslog"`
  * Esempio grosso: faccio un apt-get update, installo NginX e ne faccio restart!
    * `ansible testserver -b -m package -a "name=nginx update_cache=yes"`
    * `ansible testserver -b -m service -a "name=nginx state=restarted"`