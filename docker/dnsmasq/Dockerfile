FROM alpine:3.4
MAINTAINER Chris Hoge (chris@openstack.org)
RUN apk --no-cache add dnsmasq
ADD /dnsmasq.conf.sh /dnsmasq.conf.sh
ADD /start_dnsmasq.sh /start_dnsmasq.sh
EXPOSE 53 53/udp
ENTRYPOINT ["/start_dnsmasq.sh"]


        
