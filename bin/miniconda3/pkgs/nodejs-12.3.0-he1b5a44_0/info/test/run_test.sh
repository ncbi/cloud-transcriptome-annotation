

set -ex



node -h
node -v
npm version
npm install -h
npm config get prefix -g
test $(echo "console.log(1 + 3)" | node) == 4
exit 0
