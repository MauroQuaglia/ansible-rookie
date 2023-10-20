# Vagrant 
* Per Vagrant i passaggi sono simili al caso di una sola VM.
* Qui voglio installare NginX e poi da browser collegarmi alle due macchine.
* Una macchina l'ho configurata con la tecnica del `forwarded_port`, l'altra con la tecnica della `private_network`.
* * `vagrant global-status`
* Bisogna sistemare l'inventory per potersi connettersi alle nuove macchine. 
* Da `/ansible-rookie/test_2` posso provare a lanciare i seguenti comandi:
  * `ansible bionic-64 -m command -a "hostname"`
  * `ansible trusty-64 -m command -a "hostname"`
  * `ansible -m command -a "lsb_release -a" bionic-64,trusty-64`
* Proviamo a installare NginX su tutte e due le macchine:
  * `ansible -b -m package -a "name=nginx update_cache=yes" bionic-64,trusty-64`
  * `ansible -b -m service -a "name=nginx state=restarted" bionic-64,trusty-64`
* Ora se faccio:
 * http://localhost:8080/ -> risponde la bionic-64
 * http://192.168.56.10/ -> risponde la trusty-64