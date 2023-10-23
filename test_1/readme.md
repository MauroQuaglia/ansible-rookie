* Tuttavia Ansible ha bisogno di connettersi usando il client SSH regolare:  
  * `vagrant ssh-config`: mi serve per recuperare alcune informazioni: HostName, Port, IdentityFile.
  * Poi mi posso connettere via SSH: `ssh vagrant@HostName -p Port -i IdentityFile`.
  * Es: `ssh vagrant@127.0.0.1 -p 2201 -i /home/xpuser/mauro-quaglia/ansible-rookie/test_1/vagrant_machines/ubuntu_xenial64/.vagrant/machines/xenial-64/virtualbox/private_key` 
* 
* Dopo aver scritto l'inventory file possiamo usare il modulo __ping__ di ansible per vedere se riusciamo a comunicare con il server.
  * Dalla directory root di test basta fare: `ansible testserver -i inventory/vagrant.ini -m ping`
  * Dalla directory root di test basta fare: `ansible testserver -m ping` (se ho l'ansible.cfg posso evitare di specificare l'inventory)
* Se qualcosa non funziona possiamo usare la modalita verbosa con l'opzione `-vvvv`.