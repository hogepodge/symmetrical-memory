FROM slab_ironic_base
MAINTAINER Chris Hoge (chris@openstack.org)
ADD /start_ironic_conductor.sh /start_ironic_conductor.sh
RUN yum install -y qemu-img
EXPOSE 3260
ENTRYPOINT ["/start_ironic_conductor.sh"]
