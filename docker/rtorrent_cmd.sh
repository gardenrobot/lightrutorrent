#!/bin/sh

# Create user is doesn't exist.
getent passwd user
if [ $? -ne 0 ]; then
  adduser -D -u $PGID user
fi

# Permissions should be fine. Run this just in case.
chown -R user:user /rtorrent_socket/ /session/ /downloads/

rm /session/rtorrent.lock
exec su user -c "rtorrent -n -o import=/config/rtorrent.rc"