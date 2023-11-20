# Python docker
* Per instalare il pacchetto (ansible to docker): `sudo apt install python-docker`

* Terzo passo ci mettiamo in mezzo pure Ansible. Sarà lui a compilare l'immagine e a lanciare  il compose.
* IO ---lancio_il_playbook---> ANSIBLE ---manda_comandi_al_demone---> DOCKER
* In questo caso il docker-compose è diverso perché l'immagine se la trova già pronta... gliel'ha fatta ansible, lui la devo solo prendere e usare.

* Nell'esempio ho anche usato dei tag per creare e distruggere.
* `ansible-playbook docker-playbook.yml --tags=create`
* `ansible-playbook docker-playbook.yml --tags=destroy`
* * chiaro che se lancio il playbook senza tag prima creo, poi distruggo... totale: non c'è nulla!
