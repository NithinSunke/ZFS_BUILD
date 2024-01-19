.  /tmp/esxi_vagrant_centos8/config/install_env.sh
echo "installing os packages"
echo "+++++++++++++++++++++++"
sudo sh /tmp/esxi_vagrant_centos8/scripts/install_os_packages.sh
systemctl start nfs-server.service
systemctl enable nfs-server.service
systemctl status nfs-server.service

echo "mounting the nfs share"
echo "+++++++++++++++++++++++"

mkdir -p /nfsshare
mount -t nfs 192.168.0.10:/nfsshare /nfsshare
df -kh

echo "192.168.0.10:/nfsshare /nfsshare  nfs 0 0"  >> /etc/fstab

echo "setting the hostnames"
echo "+++++++++++++++++++++++"
sh /tmp/esxi_vagrant_centos8/scripts/configure_hostname.sh

echo "=========================================================="
echo "server build  ${HOSTNAME}.${DOMAIN_NAME} is completed"
echo "=========================================================="



