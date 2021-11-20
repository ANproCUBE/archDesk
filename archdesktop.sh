#!/bin/bash

    bash 0-preinstall.sh
    arch-chroot /mnt /root/ArchDesktop/1-setup.sh
    source /mnt/root/ArchDesktop/install.conf
    arch-chroot /mnt /usr/bin/runuser -u $username -- /home/$username/ArchDesktop/2-user.sh
    arch-chroot /mnt /root/ArchDesktop/3-post-setup.sh