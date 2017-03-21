FROM centos:7
MAINTAINER Chris Hoge (chris@openstack.org)
RUN yum install -y git epel-release python-pip vim \
 && yum install -y python-devel openssl-devel python-pip mysql-devel libxml2-devel libxslt-devel postgresql-devel git git-review libffi-devel gettext ipmitool psmisc graphviz gcc libjpeg-turbo-devel \
 && pip install python-ironicclient pymysql pip tox virtualenv --upgrade \
 && git clone https://github.com/openstack/ironic.git \
 && cd /ironic \
 && tox -edocs \
 && tox -egenconfig \
 && pip install -r requirements.txt  \
 && pip install . \
 && mkdir -p /etc/ironic \
 && cp -r /ironic/etc/ironic/* /etc/ironic/
ADD /boot.ipxe /etc/ironic/boot.ipxe \
ADD /ironic.conf.sh /ironic.conf.sh
