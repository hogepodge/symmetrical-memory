FROM slab_ironic_base
MAINTAINER Chris Hoge (chris@openstack.org)
RUN yum install -y mariadb
ADD /check_rabbit.py /check_rabbit.py
ENTRYPOINT ["/bin/bash"]
