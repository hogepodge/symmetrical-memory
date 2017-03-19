docker run -d\
           --rm \
           --name slab_dnsmasq \
           -p 53:53 \
           -p 53:53/udp \
           --cap-add=NET_ADMIN \
           --net=host \
           slab_dnsmasq
