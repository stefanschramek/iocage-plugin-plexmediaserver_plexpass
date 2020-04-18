#!/bin/sh

sysrc -f /etc/rc.conf plexmediaserver_plexpass_support_path="/"
# Configure tmp directory used for the transcoding process
sysrc -f /etc/rc.conf plexmediaserver_plexpass_tmp="/var/tmp/plex"

# Enable the service
sysrc -f /etc/rc.conf plexmediaserver_plexpass_enable="YES"

# Start the service
#service plexmediaserver_plexpass start 2>/dev/null

echo "Plex Media Server successfully installed" > /root/PLUGIN_INFO
