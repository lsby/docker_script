#!/usr/bin/env bash
set -e

yum -y install openssh-clients openssh-server
echo 'UseDNS no' >> /etc/ssh/sshd_config
sed -i -e '/pam_loginuid.so/d' /etc/pam.d/sshd
/usr/bin/ssh-keygen -A

echo '/usr/sbin/sshd' >> ./start.sh
