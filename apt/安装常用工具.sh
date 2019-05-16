#!/usr/bin/env bash
set -e

apt-get install sudo curl wget apt-transport-https -y
apt-get autoremove -y
apt-get autoclean -y
