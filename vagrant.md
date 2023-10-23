# Vagrant --> VirtualBox (hypervisor)
* Per capire se ho tutto ciò che mi occorre:
    * `vagrant --version`
    * `vboxmanage --version`
* Poi dalle directory con il nome delle macchine `/ansible-rookie/test/vagrant_machine/ubuntu_xenial64`:
    * `vagrant init ubuntu/xenial64`
    * `vagrant up`
    * `vagrant status`
    * `vagrant global-status`
    * `vagrant ssh`: per connettermi alla VM e interagire con la bash. Questo comando lo devo fare dalla directory /ubuntu_xenail64.
* Tuttavia Ansible ha bisogno di connettersi usando il client SSH regolare:
    * `vagrant ssh-config`: mi serve per recuperare alcune informazioni: HostName, Port, IdentityFile.
    * Poi mi posso connettere via SSH: `ssh vagrant@HostName -p Port -i IdentityFile`.
    * Es: `ssh vagrant@127.0.0.1 -p 2201 -i /home/xpuser/mauro-quaglia/ansible-rookie/test_1/vagrant_machines/ubuntu_xenial64/.vagrant/machines/xenial-64/virtualbox/private_key`
* Per eliminare la VM:
    * `vagrant destroy`
    * `vagrant global-status`

# Provisioner
Vagrnat ha dei tool esterni, i "provisioner" che configurano la VM dopo che è partita. 
Per esempio il provisioner "ansible" installa Ansible sulla VM e usa un playbook per configurarla. 
In questo modo posso anche non installare ansible sulla mia macchina.
La stessa cosa si può fare con Docker.
* Quando faccio `vagrant up` viene eseguito il provisioner.
* Con `vagrant provision` lo forzo a girare un'altra volta.
* Con `vagrant reload --provision` faccio rebbot e provision.
* Con `vagrant up --provision`: start di una VM in stato healt con provision.
* Con `vagrant up --no-provision`: start di una VM in stato healt senza provision.

# Plugin
Vagrant è estendibile in funzionalità mediante dei plug-in.
Per esempio se vogliamo gestire gli hostname dulla VM possiamo aggiungere il plug-in "vagrant-hostmanager": `config.vagrant.plugins = ['vagrant-hostmanager']`.
Questo plug-in è già attivo di default, però ci da l'idea di come fare.