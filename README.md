# iocage-plugin-plexmediaserver_plexpass

## Post install steps
### Stop the services
```
iocage exec jail_name "service plexmediaserver_plexpass stop"
```
### Add mount points
```
mkdir "/mnt/pool-1/iocage/jails/jail_name/root/config/Plex Media Server"
iocage fstab -a jail_name /mnt/pool-1/apps/plexmediaserver "/config/Plex Media Server" nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/media/movies
iocage fstab -a jail_name /mnt/pool-1/media/movies /media/movies nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/media/tvshows
iocage fstab -a jail_name /mnt/pool-1/media/tvshows /media/tvshows nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/media/music
iocage fstab -a jail_name /mnt/pool-1/media/music /media/music nullfs rw 0 0
mkdir /mnt/pool-1/iocage/jails/jail_name/root/media/photos
iocage fstab -a jail_name /mnt/pool-1/media/photos /media/photos nullfs rw 0 0
```
### Add permissions using FreeNAS 11.3 ACL manager
1. Click the three dots next to the media dataset; in this example, it is called "media"
2. Select "Edit ACL"
3. Click the "Add ACL Item" button. A new section will appear at the bottom of the list of existing ACL items.
4. Fill in the following (*note that 972 is the correct user here*):

![ACL Permissions](https://static.ixsystems.co/uploads/2020/02/pasted-image-0-1.png)

Don't worry if it says "Could not find a username for this ID"
5. If files already exist in the dataset, select the "Apply permissions recursively" checkbox.
6. Click "Save"

**Popular Plugin user ID's:**
```
NZBGet = 504
Plex = 972
Radarr = 352
Sabnzbd = 350
Sonarr = 351
Transmission = 921
```
### Start the services
```
iocage exec jail_name "service plexmediaserver_plexpass start"
```
