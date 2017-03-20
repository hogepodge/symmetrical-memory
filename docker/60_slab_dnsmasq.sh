# dnsmasq in this instance serves three purposes:
# * Hand out management ip addresses on the out-of-band management
#   network. This is configured in the dnsmasq_config file and
#   mounted as a volume file, as well as in the config file.
# * Assist in network booting over the data network, with variables
#   set in the config file.
# * Serve up ip addresses to the data network, also set up in
#   the config file.
source ./config
docker run -d\
           --env-file ./config \
           --rm \
           --name slab_dnsmasq \
           -p 53:53 \
           -p 53:53/udp \
           --cap-add=NET_ADMIN \
           --net=host \
           -v $PWD/dnsmasq_config:/etc/dnsmasq.d/ip_assignment.conf \
           slab_dnsmasq
