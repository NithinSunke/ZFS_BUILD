#!/bin/bash
.  /tmp/ZFS_BUILD/install_env.sh
# Install targetcli
sudo yum install -y targetcli

# Check if the installation was successful
if [ $? -eq 0 ]; then
   echo "targetcli installed successfully"
else
   echo "Error installing targetcli"
   exit 1
fi

# Start targetcli service
sudo systemctl start target

# Enable targetcli service to start on boot
sudo systemctl enable target

echo "InitiatorName=iqn.1994-05.com.scs:$HOSTNAME" > /etc/iscsi/initiatorname.iscsi

echo "targetcli service started and enabled on boot"

