#!/bin/bash
. /tmp/ZFS_BUILD/install_env.sh
# Create the ZFS dataset
sudo zfs create $POOL_NAME/$DATASET_NAME

# Check the status of the new dataset
sudo zfs list

echo "ZFS dataset '$DATASET_NAME' created successfully."