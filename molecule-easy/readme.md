# Molecule Easy
* Ho ripreso esattamente quanto fatto in Docker-3 che funzionava bene e ho provato a fare dei check molecule easy, cioè una roba casereccia e fatta
  a mano, anche perché tirare in piedi tutta l'infrastruttura molecule non mi serve.

* Nell'esempio ho anche usato dei tag per creare e distruggere.
* `ansible-playbook docker-playbook.yml --tags=create`
* `ansible-playbook docker-playbook.yml --tags=destroy`
* chiaro che se lancio il playbook senza tag prima creo, poi distruggo... totale: non c'è nulla!

# YAMLlint: validità e cosmetica del file yml
* `yamllint docker-playbook.yml`
* Questo va a braccetto con il suo file di configurazione: `.yamllint`

# ansible-lint: pratiche e comportamenti che si possono migliorare
* Si possono customizzare le regolespecificandole in una opportuna dirctory.
* `ansible-lint docker-playbook.yml`

# verify.yml
* Posso fare uancheun playbook per le verifiche.
* Ossia io lancio il mio playbook che fa code sul server remoto e poi lancio questo playbook che fa delle verifiche che tutto sia OK.
* Posso scrivere a video cose o fare anche degli assert qua dentro.
* Esempio: 
* `ansible-playbook docker-playbook.yml --tags=create`
* `ansible-playbook verify.yml`
* `ansible-playbook docker-playbook.yml --tags=destroy`
