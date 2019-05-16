#!/usr/bin/env bash
set -e

apt-get install sudo curl wget apt-transport-https bzip2 -y
apt-get autoremove -y
apt-get autoclean -y
