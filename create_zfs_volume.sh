#!/bin/bash
. /tmp/ZFS_BUILD/install_env.sh
# Set your pool name, dataset name, volume name, and size

  # Adjust the size as needed, e.g., 50G, 100G, etc.

# Create the ZFS volume under the dataset
sudo zfs create -V $VOLUME_SIZE $POOL_NAME/$DATASET_NAME/$VOLUME_NAME

# Check the status of the new volume
sudo zfs list

echo "ZFS volume '$VOLUME_NAME' created successfully under dataset '$DATASET_NAME'."