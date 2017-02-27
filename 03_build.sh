# as root
cd ~/hoge/kolla
source .kolla/bin/activate
kolla-build --registry 192.168.1.23:5000 --push -t source -T 1
