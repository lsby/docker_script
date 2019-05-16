#!/usr/bin/env bash
set -e

# 安装语言
locale-gen zh_CN.UTF-8
apt-get autoremove -y
apt-get autoclean -y

export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:zh
export LC_ALL=zh_CN.UTF-8
