FROM alpine:3.4
MAINTAINER Chris Hoge (chris@openstack.org)
RUN apk --no-cache add dnsmasq
ADD /dnsmasq.conf /etc/dnsmasq.conf
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]
