#!/bin/sh

pw groupadd -n mnt -g 1002
pw groupmod 1002 -m 972

sysrc -f /etc/rc.conf plexmediaserver_plexpass_support_path="/config"
sysrc -f /etc/rc.conf plexmediaserver_plexpass_enable="YES"

#service plexmediaserver_plexpass start 2>/dev/null

echo "Plex Media Server successfully installed" > /root/PLUGIN_INFO
