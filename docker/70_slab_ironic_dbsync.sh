# This container bootstraps the database then gets rid of itself.
# Using credentials from the environment, it uses tooling from the
# base ironic image to create the ironic table and user (if it
# doesn't already exist) and run the ironic_dbsync command. It is
# safe to run this repeatedly, as no data is deleted, and the
# dbsync command should be either idempotent (if run from the same
# version) or will safely upgrade the database to the latest version
# required by an Ironic update.
docker run --rm \
           --env-file ./config \
           --name slab_ironic_dbsync \
           --link=slab_rabbit:slab_rabbit \
           --link=slab_mariadb:slab_mariadb \
           slab_ironic_dbsync
