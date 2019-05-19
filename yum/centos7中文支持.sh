#!/usr/bin/env bash
set -e

yum -y install wqy*
yum -y install kde-l10n-Chinese
yum -y reinstall glibc-common
echo 'LANG="zh_CN.UTF-8"' > /etc/locale.conf
localedef -c -f UTF-8 -i zh_CN zh_CN.utf8
