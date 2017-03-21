# Starts the Ironic Conductor service. This container works by connecting
# ty RabbitMQ and MariaDB data through the environment variables config,
# then writing the /etc/ironic/ironic.conf file before starting the 
# Ironic Conductor service. It also attaches the shared image volume
# storage, allowing the conductor to write to the http (nginx) and tftp
# server spaces
docker run -d \
           --env-file ./config \
           --name slab_ironic_conductor \
           --link=slab_rabbit:slab_rabbit \
           --link=slab_mariadb:slab_mariadb \
           -p 3260:3260 \
           -v slab_imagedata:/imagedata \
           slab_ironic_conductor
