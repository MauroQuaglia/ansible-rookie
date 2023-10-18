# Vagrant --> VirtualBox (hypervisor)
* Per capire se ho tutto ciò che mi occorre:
  * `vagrant --version`
  * `vboxmanage --version`
* Poi dalle directory con il nome delle macchine `/ansible-rookie/vagrant_machines/ubuntu_xenial64`:
  * `vagrant init ubuntu/xenial64`
  * `vagrant up`
  * `vagrant status`
  * `vagrant global-status`
  * `vagrant ssh`: per connettermi alla VM e interagire con la bash
* Tuttavia Ansible ha bisogno di connettersi usando il client SSH regolare:  
  * `vagrant ssh-config`: mi serve per recuperare alcune informazioni: HostName, Port, IdentityFile.
  * Poi mi posso connettere via SSH: `ssh vagrant@HostName -p Port -i IdentityFile`.
  * Es: `ssh vagrant@127.0.0.1 -p 2222 -i /home/xpuser/mauro-quaglia/ansible-rookie/vagrant_machines/ubuntu_xenial64/.vagrant/machines/default/virtualbox/private_key` 
* Per eliminare la VM:
  * `vagrant destroy`
  * `vagrant global-status`