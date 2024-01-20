#!/bin/bash
. /tmp/ZFS_BUILD/install_env.sh
# Check if the script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Create iSCSI block backstore

targetcli <<EOF
/backstores/block create $block_name $block_path
EOF

# Create iSCSI target

targetcli <<EOF
/iscsi create $target_name
EOF

# Create ACL (Access Control List)
initiator_iqn="iqn.1994-05.com.scs:sddoc01"
targetcli <<EOF
/iscsi/$target_name/tpg1/acls create $initiator_iqn
EOF

# Create iSCSI LUN (Logical Unit Number)
targetcli <<EOF
/iscsi/$target_name/tpg1/luns create /backstores/block/$block_name $lun_id
EOF

echo "iSCSI configuration completed successfully"
