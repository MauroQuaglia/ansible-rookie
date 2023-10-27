Usare alcuni accorgimenti per un buon playbook:
* `ansible-inventory --graph`
* `yamllint webservers.yml` per sintassi corretta del playbook.
* Ho provato a lanciare tutti i moduli man mano che li aggiungevo con `ansible-playbook webservers.yml`.
* Poi andando nel browser su `http://127.0.0.1:8080/` si vede l'NGINX con il messaggio desiderato!

Per la parte di comunicazione sicura:
Riassunto:
 * COMUNICAZIONE SICURA: client -->TLS|SSL--> server
 * SSL: vecchio
 * TLS: nuovo
Generazione di un certificato per prove locali.
* `openssl genpkey -algorithm RSA -out files/nginx.key`
* `sudo openssl req -x509 -new -key files/nginx.key -days 365 -out files/nginx.crt`

* Per la versione con il TLS:
 * `ansible-playbook webservers-tls.yml`:
 *  http://127.0.0.1:8080/
 *  https://127.0.0.1:8443/

* La versione semplice del Play del Playbook `webservers-tls.yml` è quella di eliminare tutta la gestione tramite handler e fare un restart
  del servizio Nginx come ultimo task del Play. E' lo stesso Ansible a consigliare cose di questo tipo, soprattutto se sto solo 
  'preparando' una macchina.