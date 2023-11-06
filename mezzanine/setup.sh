sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y python3-venv
sudo python3 -m venv venv
source venv/bin/activate
sudo apt-get install -y python3-pip
sudo pip3 install wheel
sudo pip3 install mezzanine
sudo mezzanine-project myproject
cd myproject
sudo python3 manage.py migrate
sudo python3 manage.py runserver 0.0.0.0:8000