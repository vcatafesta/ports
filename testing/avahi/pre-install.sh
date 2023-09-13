#!/bin/sh

getent group avahi >/dev/null || groupadd -fg 84 avahi
getent group netdev >/dev/null || groupadd -fg 86 netdev
getent passwd avahi >/dev/null || useradd -c "Avahi Daemon Owner" -d /run/avahi-daemon -u 84 -g avahi -s /bin/false avahi

