#!/bin/sh
if [ ! -f UUID ]; then
  UUID="48ed95ee-8d4f-421b-a2bc-bcdc37e758af"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

