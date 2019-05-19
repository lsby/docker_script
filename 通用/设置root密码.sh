#!/usr/bin/env bash
set -e

# 设置root密码
echo "root:root" | chpasswd
