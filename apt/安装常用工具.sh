#!/usr/bin/env bash
set -e

apt-get install sudo curl wget apt-transport-https bzip2 xz-utils vi vim nano -y
apt-get autoremove -y
apt-get autoclean -y
