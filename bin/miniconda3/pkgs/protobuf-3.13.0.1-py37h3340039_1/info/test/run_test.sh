

set -ex



python -c "from google.protobuf.internal import api_implementation; assert api_implementation.Type() == 'cpp'"
exit 0
