#!/bin/bash

cat <<EOF
Welcome to the Juev/piwik container
EOF

/etc/init.d/php5-fpm start
chmod a+rwx /var/run/php5-fpm.sock

# exec CMD
echo ">> exec docker CMD"
echo "$@"
exec "$@"
