#!/bin/sh

getent group atd >/dev/null || groupadd -fg 17 atd
getent passwd atd >/dev/null || useradd -d /dev/null -c "atd daemon" -g atd -s /bin/false -u 17 atd

