# Vagrant 
* Passaggi simili al caso di una sola VM
  * `vagrant global-status`
  * `ansible bionic-64 -m command -a "hostname"`
  * `ansible trusty-64 -m command -a "hostname"`
  * `ansible -m command -a "lsb_release -a" bionic-64,trusty-64`