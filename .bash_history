sudo apt update && sudo apt upgrade -y
ssh-keygen -t rsa -b 4096 -C "zazuk2002@mail.ru"
touch ~/.ssh/authorized_keys
nano ~/.ssh/authorized_keys
curl http://127.0.0.1:8000
\q
useradd -g www-data -m django
ls -lah /home/django/
sudo apt update && sudo apt upgrade -y && sudo apt-get install -y postgresql postgresql-contrib
sudo -u postgres psql
pg_ctlcluster 12 main start
systemctl status postgresql
cd /home/django/
sudo apt install -y python3-venv
ls -lah
python3 -m venv venv
ls -lah
source ./venv/bin/activate
cd /home/django/geekshop/
pip install --no-cache-dir -r ./requirements.txt
gunicorn geekshop.wsgi
sudo nano /etc/systemd/system/gunicorn.service
ls -lah
sudo chown -R django:www-data /home/django/geekshop
ls -lah
sudo systemctl enable gunicorn
sudo systemctl start gunicorn
sudo systemctl status gunicorn
sudo apt install -y nginx
sudo nano /etc/nginx/sites-available/geekshop
sudo ln -s /etc/nginx/sites-available/geekshop /etc/nginx/sites-enabled/geekshop
sudo nginx -t
sudo systemctl restart nginx
sudo systemctl status nginx
export DJANGO_PRODUCTION=1; python manage.py migrate
python manage.py collectstatic
sudo systemctl stop gunicorn.service
sudo systemctl status gunicorn.service
