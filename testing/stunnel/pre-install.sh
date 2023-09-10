#!/bin/sh

getent group stunnel >/dev/null || groupadd -g 51 stunnel
getent passwd stunnel >/dev/null || useradd -c "stunnel Daemon" -d /var/lib/stunnel -g stunnel -s /bin/false -u 51 stunnel
