

set -ex



conda inspect linkages -p $PREFIX $PKG_NAME
g-ir-scanner --help
g-ir-compiler --help
test -f `pkg-config --variable=g_ir_scanner --dont-define-prefix gobject-introspection-1.0`
exit 0
