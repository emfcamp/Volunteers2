cd /vagrant
sudo apt-get update
sudo apt-get install -y python3-dev postgresql-server-dev-9.6 postgresql-9.6 python3-pip
sudo pip3 install pipenv

cat > /etc/postgresql/9.6/main/pg_hba.conf <<EOF
# TYPE  DATABASE        USER            ADDRESS                 METHOD
local   all             postgres                                peer
local   all             vagrant                                 trust
host    all             vagrant         127.0.0.1/32            trust
host    all             vagrant         ::1/128                 trust
local   all             all                                     peer
host    all             all             127.0.0.1/32            md5
host    all             all             ::1/128                 md5
EOF

pg_ctlcluster 9.6 main reload
su postgres -c 'createuser -s vagrant'
su postgres -c 'createdb -O vagrant emf_volunteers'
su postgres -c 'createdb -O vagrant emf_volunteers_test'

touch .inside-vagrant

cat > /home/vagrant/.bash_profile <<EOF
    cd /vagrant
    pipenv shell
EOF
