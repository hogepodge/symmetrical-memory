# Starts the Ironic API service. This container works by loading in
# RabbitMQ and MariaDB data through the environment variables, the
# writing the /etc/ironic/ironic.conf file before starting the 
# Ironic API service.
docker run -d \
           --env-file ./config \
           -p 6385:6385 \
           --name slab_ironic_api \
           --link=slab_rabbit:slab_rabbit \
           --link=slab_mariadb:slab_mariadb \
           slab_ironic_api
