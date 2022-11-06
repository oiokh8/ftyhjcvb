#!/bin/sh
if [ ! -f UUID ]; then
  UUID="7edbcacb-9a44-4ec3-9378-d865092b642a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

