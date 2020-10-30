

set -ex



test -f ${PREFIX}/lib/libglib-2.0.so
test ! -f ${PREFIX}/lib/libgobject-2.0.la
gapplication help
gdbus help
gio version
gio-querymodules .
glib-compile-resources --help
glib-compile-schemas --help
gobject-query --help
gresource help
gtester --help
exit 0
