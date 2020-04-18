# iocage-plugin-plexmediaserver_plexpass

## Post install steps
### Stop the services
```
iocage exec jail_name "service plexmediaserver_plexpass stop"
```
### Add mount points
```
mkdir "/mnt/pool-1/iocage/jails/jail_name/root/usr/local/plexdata-plexpass/Plex Media Server"
iocage fstab -a jail_name /mnt/pool-1/apps/plexmediaserver "/usr/local/plexdata-plexpass/Plex Media Server" nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/media/movies
iocage fstab -a jail_name /mnt/pool-1/media/movies /media/movies nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/media/tvshows
iocage fstab -a jail_name /mnt/pool-1/media/tvshows /media/tvshows nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/media/music
iocage fstab -a jail_name /mnt/pool-1/media/music /media/music nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/media/photos
iocage fstab -a jail_name /mnt/pool-1/media/photos /media/photos nullfs rw 0 0
```
### Start the services
```
iocage exec jail_name "service plexmediaserver_plexpass start"
```
