#!/usr/bin/env bash
set -e

# 安装ssh
apt-get install -y openssh-server
apt-get autoremove -y
apt-get autoclean -y

# 设置ssh
mkdir -p /var/run/sshd
sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config
sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config
sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config
