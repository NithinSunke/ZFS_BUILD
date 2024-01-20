#!/bin/bash
. /tmp/ZFS_BUILD/install_env.sh
# Check if ZFS module is loaded
if ! lsmod | grep -q zfs; then
    echo "ZFS module not loaded. Loading the module..."
    sudo modprobe zfs
fi

# Create the ZFS storage pool
sudo zpool create -f $POOL_NAME $DEVICE

# Check the status of the new pool
sudo zpool status $POOL_NAME

echo "ZFS storage pool '$POOL_NAME' created successfully."