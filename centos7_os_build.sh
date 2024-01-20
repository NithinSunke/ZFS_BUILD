echo "Centos 7 Os build started........"

cd /tmp
git clone https://github.com/NithinSunke/vsphere_linux_os_build.git
cd /tmp
ls
cat  /tmp/tmp/vsphere_linux_os_build/config/install_env.sh  > /tmp/ZFS_BUILD/install_env.sh
cat /tmp/ZFS_BUILD/install_variables.sh >> /tmp/ZFS_BUILD/install_env.sh

cd /tmp
rm -rf /tmp/vsphere_linux_os_build

.  /tmp/ZFS_BUILD/install_env.sh

echo "installing os packages"
echo "+++++++++++++++++++++++"

sudo sh /tmp/ZFS_BUILD/install_os_packages.sh
systemctl start nfs-server.service
systemctl enable nfs-server.service
systemctl status nfs-server.service

sudo yum -y install iscsi-initiator-utils
sudo systemctl start iscsid
sudo systemctl enable iscsid
sudo systemctl stop firewalld
sudo systemctl disable firewalld
yum clean all

echo "mounting the nfs share"
echo "+++++++++++++++++++++++"

mkdir -p /nfsshare
mount -t nfs 192.168.0.10:/nfsshare /nfsshare
df -kh

echo "192.168.0.10:/nfsshare /nfsshare  nfs 0 0"  >> /etc/fstab

echo "setting the hostnames"
echo "+++++++++++++++++++++++"
sh /tmp/ZFS_BUILD/configure_hostname.sh

echo "=========================================================="
echo "server build  ${HOSTNAME}.${DOMAIN_NAME} is completed"
echo "=========================================================="

echo "Centos 7 os build completd........"