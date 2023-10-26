# Proviamo con tanti server.
* Tiro su tutto con un `vagrant up` e poi faccio un po' di check. Li faccio solo per la __vagrant-1__ ma vanno fatti 
  anche per tutte le altre. Occhio a mettere le porte giuste.
* Connessione tramite Vagrant: `vagrant ssh vagrant-1` 
* Connessione tramite SSH: `ssh vagrant@vagrant-1 -p 2201` (questo è l'SSH che poi usa anche ansible)
  * Per fare questa connessione però devo modificare il mio `.ssh/config` per specificargli tutti gli altri parametri, come l'IdentityFile e compagnia bella.
* Ping con Ansible: `ansible vagrant-1 -m ping` (Come dicevo sopra usa il tool SSH)
  * Per fare questa connessione però ansible deve sapere la porta. Tutto ciò è specificato nell'inventory.
  * Quindi mettendo insieme le informazioni dell'inventory e dell'ssh-config la connessione avviene con successo.


