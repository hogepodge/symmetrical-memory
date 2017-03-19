# Starts the Ironic Conductor service. This container works by loading in
# RabbitMQ and MariaDB data through the environment variables, the
# writing the /etc/ironic/ironic.conf file before starting the 
# Ironic Conductor service. It also adds the image volume storage,
# allowing the conductor to scribble all over the server storage of tftp
# and nginx as needed.
docker run -d \
           --env-file ./config \
           --name slab_ironic_conductor \
           --link=slab_rabbit:slab_rabbit \
           --link=slab_mariadb:slab_mariadb \
           -p 3260:3260 \
           -v slab_imagedata:/imagedata \
           slab_ironic_conductor
