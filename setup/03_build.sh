# as root
cd /home/hoge/kolla
source .kolla/bin/activate
kolla-build --registry 192.168.1.6:4000 --push -t source -T 8
