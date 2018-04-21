#!/bin/sh

set -xeo pipefail

sed -i "s/^syncthing:x:[0-9]*:[0-9]*:/syncthing:x:${ST_UID}:${ST_GID}:/g" /etc/passwd
chown "${ST_UID}" /var/syncthing

CMD="${@}"

su -s /bin/sh syncthing -c "${CMD}"
