FROM centos:7
MAINTAINER Chris Hoge (chris@openstack.org)
RUN yum update -y \
 && yum install -y epel-release  \
 && yum install -y git python-pip which qemu-img sudo e2fsprogs \
 && yum clean all \
 && git clone https://github.com/openstack/diskimage-builder.git \
 && cd /diskimage-builder \
 && pip install -r requirements.txt \
 && pip install .
ENTRYPOINT ["/bin/bash"]
