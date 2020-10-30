# Since librsvg is being removed, we want it to be removed from loaders.cache.
# But since this is a PRE-unlink script, the loader is still present.
# Remove it now so we can update loaders.cache correctly.
rm ${PREFIX}/lib/gdk-pixbuf-2.0/*/loaders/libpixbufloader-svg.so

# The gdk-pixbuf post-link function updates the loaders
${PREFIX}/bin/.gdk-pixbuf-post-link.sh
