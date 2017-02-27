# begin by installing system dependencies
sudo yum install -y git vim epel-release python-pip python-devel libffi-devel gcc openssl-devel ansible ntp python-virtualenv screen

# install and start ntp for system synchronization
sudo systemctl enable ntpd.service
sudo systemctl start ntpd.service

# Update pip to the latest version
sudo pip install -U pip 

# Install the docker engine from the docker repository
curl -sSL https://get.docker.io | bash

# Allow the local user to run and control docker
sudo usermod -aG docker hoge

# Set up Kolla specific configurations for docker
sudo mkdir -p /etc/systemd/system/docker.service.d
sudo tee /etc/systemd/system/docker.service.d/kolla.conf <<-'EOF'
[Service]
MountFlags=shared
ExecStart=
ExecStart=/usr/bin/dockerd --insecure-registry 192.168.1.23:5000
EOF

# Reload docker to capture the system changes
sudo systemctl daemon-reload
sudo systemctl restart docker
sudo systemctl enable docker

# Install python-docker-py
sudo yum install -y python-docker-py

# If it's running, stop and disable the libvirt service
sudo systemctl stop libvirtd.service
sudo systemctl disable libvirtd.service

# Download and install kolla from source in a virtual environment
mkdir kolla
cd kolla
virtualenv .kolla
source .kolla/bin/activate
pip install tox 
git clone https://github.com/openstack/kolla
cd kolla
pip install -r requirements.txt
pip install .
cd ..
git clone https://github.com/openstack/kolla-ansible
cd kolla-ansible
pip install -r requirements.txt
pip install .
cd ..
sudo cp -r kolla-ansible/etc/kolla /etc/kolla/
cp kolla-ansible/ansible/inventory/* .

# Install and start the docker registry
sudo ./kolla/tools/start-registry
