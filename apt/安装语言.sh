#!/usr/bin/env bash
set -e

# 安装语言
locale-gen zh_CN.UTF-8
apt-get autoremove -y
apt-get autoclean -y
