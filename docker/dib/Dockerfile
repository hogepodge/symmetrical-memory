FROM centos:7
MAINTAINER Chris Hoge (chris@openstack.org)
RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y git python-pip which qemu-img sudo e2fsprogs
RUN yum clean all
RUN git clone https://github.com/openstack/diskimage-builder.git
WORKDIR /diskimage-builder
RUN pip install -r requirements.txt 
RUN pip install .
ENTRYPOINT ["/bin/bash"]
