# Mezzanine
* Preparo con Vagrnat una `ubuntu/focal64` e mappo la porta `8000` dell'host con l'`8000` della VM.
* Mi collego alla macchina con `vagrant ssh focal64`
* Prima di lanciare i comandi ho fatto anche un `sudo apt-get update` e `sudo apt-get upgrade` ma potrebbe non servire.
* Poi si possono lanciare iseguenti comandi:
* `sudo apt-get install -y python3-venv`
* `python3 -m venv venv`
* `source venv/bin/activate` (qundo poi ho finito il lavoro posso fare `deactivate`)
* `pip3 install wheel`
* `pip3 install mezzanine`
* `mezzanine-project myproject`
* `cd myproject`
* `sed -i 's/ALLOWED_HOSTS = \[\] /ALLOWED_HOSTS = ["*"]/' myproject/settings.py`
* `python manage.py migrate`
* `python manage.py runserver 0.0.0.0:8000`
* Poi se da locale vado su `http://localhost:8000/` vedo Mezzanine!


