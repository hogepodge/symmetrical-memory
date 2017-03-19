# Create and initialize the image backing storage. This is probably the
# hackiest part of this entire application build. To summarize:
# * tftp and nginx serve image data to the nodes
# * Ironic Conductor wants to cache image data and manage the content
#   on the tftp and nginx servers
# * This violates some 12 factor principles and makes separation of
#   these services somewhat difficult. That is, without shared volume
#   storage there is no way to run these proceses as otherwise
#   independent applications.
# * To make matters worse, the Ironic Conductor caching mechanism
#   uses hard file links, forcing both cache and served data to be
#   stored on the same volume (and, as far as I can tell, there is no
#   way to diable Ironic Conducter caching desite promises to the
#   contrary.
# So, this container sets up the volume to store the data, with
# tmp, cache, httpboop, and tftp directories as children under
# an imagedata mount point.
#
# This container bootstraps the data. It starts with the images
# in the container storage, copies them to the volume storage, then
# promptly deletes itself. In principle, it should be safe to run
# this container multiple times, as the data it moves to the volume
# provides the base ipmi and pxe booting resources. It will not
# override any other image data dropped in by the Ironic Conductor
docker volume create --name slab_imagedata
docker run -v slab_imagedata:/imagedata \
           -id \
           --name slab_imagedata \
           --rm \
           slab_imagedata
