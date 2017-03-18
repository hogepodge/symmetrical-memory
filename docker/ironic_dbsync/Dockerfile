FROM slab_ironic_base
MAINTAINER Chris Hoge (chris@openstack.org)
RUN yum install -y mariadb
ADD /setup_database.sh /setup_database.sh
ENTRYPOINT ["/setup_database.sh"]

