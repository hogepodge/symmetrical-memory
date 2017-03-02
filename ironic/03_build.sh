# as root
cd ~/hoge/kolla
source .kolla/bin/activate
kolla-build --registry 192.168.11.131:4000 --push -t source -T 8
