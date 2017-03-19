FROM centos:7
MAINTAINER Chris Hoge (chris@openstack.org)
RUN yum install -y git epel-release python-pip vim
RUN yum install -y python-devel openssl-devel python-pip mysql-devel libxml2-devel libxslt-devel postgresql-devel git git-review libffi-devel gettext ipmitool psmisc graphviz gcc libjpeg-turbo-devel
RUN pip install pip --upgrade
RUN pip install -U tox
RUN pip install python-ironicclient
RUN pip install pymysql
RUN git clone https://github.com/openstack/ironic.git
WORKDIR /ironic
RUN pip install -U virtualenv
RUN tox -edocs
RUN tox -egenconfig
RUN pip install -r requirements.txt 
RUN pip install .
RUN mkdir -p /etc/ironic
RUN cp -r /ironic/etc/ironic/* /etc/ironic/
ADD /boot.ipxe /etc/ironic/boot.ipxe
ADD /ironic.conf.sh /ironic.conf.sh
