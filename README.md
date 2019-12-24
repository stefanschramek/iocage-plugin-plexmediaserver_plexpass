# iocage-plugin-plexmediaserver_plexpass

## Post install steps
### Stop the services
```
iocage exec jail_name "service plexmediaserver_plexpass stop"
```
### Add mount points
```
iocage fstab -a jail_name /mnt/pool-1/apps/plexmediaserver /config nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/media/movies
iocage fstab -a jail_name /mnt/pool-1/multimedia/movies /media/movies nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/media/tvshows
iocage fstab -a jail_name /mnt/pool-1/multimedia/tvshows /media/tvshows nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/media/music
iocage fstab -a jail_name /mnt/pool-1/media/music /media/music nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/media/documentaries
iocage fstab -a jail_name /mnt/pool-1/multimedia/documentaries /media/documentaries nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/media/photos
iocage fstab -a jail_name /mnt/pool-1/media/photos /media/photos nullfs rw 0 0

iocage exec jail_name chown -R plex:plex /config
```
### Start the services
```
iocage exec jail_name "service plexmediaserver_plexpass start"
```
