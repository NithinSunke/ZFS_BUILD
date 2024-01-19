#!/bin/bash

POOL_NAME="devpool"
DEVICE="/dev/sdb" 
DATASET_NAME="docker"
VOLUME_NAME="docker_vol1"
VOLUME_SIZE="25G"
block_name="docker_vol1"
block_path=""/dev/devpool/docker/docker_vol1""
target_name="iqn.2024-01.com.scs:${HOSTNAME}"
lun_id=0