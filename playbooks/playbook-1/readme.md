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
