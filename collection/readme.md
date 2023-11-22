* Prova sulle collezioni.
NB:
* Alcune collection sono native dell'installazione di ansible che ho sulla macchina.
* Altre possono essere installate con il comando opportuno e messe in un path opportuno (di solito /HOME/.ansible)
  * `ansible-galaxy collection install -r requiremets.yml --collections-path=.`
* Quando uso una collection specifica è importante usate il Fully Qualified Collection Name FQCN nel playbook per evitare possibili conflitti
* con i moduli che sono nativi dell'installazione di ansible.