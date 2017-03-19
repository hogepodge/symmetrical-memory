# starts the RabbitMQ service, with the default user and password
# specified in the environment configuration file. The hostname
# is set explicitly to match the attachment names and make
# Rabbit happy about who and how connects to it.
docker run -d \
           --env-file ./config \
           --hostname slab_rabbit \
           --name slab_rabbit  \
           rabbitmq:3
