sudo sh /tmp/ZFS_BUILD/centos7_os_build.sh
. /tmp/ZFS_BUILD/install_env.sh
sudo sh /tmp/ZFS_BUILD/zfs_server_install.sh

sudo sh /tmp/ZFS_BUILD/create_zfs_storage_pool.sh

sudo sh /tmp/ZFS_BUILD/create_zfs_dataset.sh

sudo sh /tmp/ZFS_BUILD/create_zfs_volume.sh

sudo sh /tmp/ZFS_BUILD/install_iscsi_server.sh

sudo sh /tmp/ZFS_BUILD/create_iscsi_lun.sh


