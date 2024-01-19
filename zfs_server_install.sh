sudo rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm
sudo rpm -Uvh http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo rpm -Uvh https://forensics.cert.org/cert-forensics-tools-release-el7.rpm
sudo rpm -Uvh http://download.zfsonlinux.org/epel/zfs-release.el7_6.noarch.rpm
sudo yum update -y
sudo yum groupinstall -y "Development Tools" "Development Libraries" "Additional Development"
sudo yum install -y kernel-devel kernel-headers
sudo yum install -y zfs
sudo /sbin/modprobe zfs


