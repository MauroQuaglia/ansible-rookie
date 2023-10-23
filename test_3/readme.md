Proviamo a fare un provisioning di Docker.
Ossia usiamo i "provisioner" di Vagrant, e configuriamo la VM a usare direttamente Docker con un NginX.

Se poi faccio `vagrant ssh` entro nella macchina e con un `docker container ls -a` vedo il container con NginX girare!
Lo cancello e ne faccio partire un altro con `docker container run -d -p 80:80 nginx:latest`
E ora, dato che nel Vagrnatfile ho `'forwarded_port', guest: 80, host: 8080` se dal mio broser faccio `http://localhost:8080/` vedo NginX girare correttamenmte!
* browser:8080 -(forwarded_port)-> guest:80 -(port-mapping-docker)-> nginx:80