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
  * Es: `ssh vagrant@127.0.0.1 -p 2201 -i /home/xpuser/mauro-quaglia/ansible-rookie/test/vagrant_machine/ubuntu_xenial64/.vagrant/machines/default/virtualbox/private_key` 
* Per eliminare la VM:
  * `vagrant destroy`
  * `vagrant global-status`

* Dopo aver scritto l'inventory file possiamo usare il modulo __ping__ di ansible per vedere se riusciamo a comunicare con il server.
  * Dalla directory root di test basta fare: `ansible testserver -i inventory/vagrant.ini -m ping`
* Se qualcosa non funziona possiamo usare la modalita verbosa con l'opzione `-vvvv`.