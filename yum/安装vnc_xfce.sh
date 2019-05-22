#!/usr/bin/env bash
set -e

yum install tigervnc-server -y
yum groupinstall xfce -y
yum clean all

mkdir -p /root/.vnc
echo '#!/bin/sh
unset SESSION_MANAGER
[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r$ HOME/.Xresources ] && xrdb $HOME/.Xresourcesx
setroot -solid grey
vncconfig -iconic &
startxfce4 &' > /root/.vnc/xstartup
chmod 775 /root/.vnc/xstartup

echo "123456" | vncpasswd -f >> /root/.vnc/passwd
chmod 600 /root/.vnc/passwd

echo 'vncserver :1' >> ./start.sh
