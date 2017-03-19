# Starts dnsmasq. Currentlty, this is one of the most badly written
# parts of this application deployment. The added dnsmasq.conf file
# encodes way too much information about the deployment target. This
# will be fixed in a future version, but I leave this message here
# for shame in case I don't actually get around to it. dnsmasq in
# this instance is service thre purposes:
# * Hand out management ip addresses on the out-of-band management
#   network.
# * Assist in network booting over the data network.
# * Serve up ip addreses to the data network.
# Still working out how best to tackle the configuration of these
# items in a rational and usable way.
docker run -d\
           --rm \
           --name slab_dnsmasq \
           -p 53:53 \
           -p 53:53/udp \
           --cap-add=NET_ADMIN \
           --net=host \
           slab_dnsmasq
