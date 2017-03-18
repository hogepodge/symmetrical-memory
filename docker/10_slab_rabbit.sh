docker run -d \
           --env-file ./config \
           --hostname slab_rabbit \
           --name slab_rabbit  \
           rabbitmq:3
