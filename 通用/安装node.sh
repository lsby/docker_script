#!/usr/bin/env bash
set -e

cd /opt
wget https://nodejs.org/dist/v10.15.3/node-v10.15.3-linux-x64.tar.xz
tar -xvf node-v10.15.3-linux-x64.tar.xz
ln -s node-v10.15.3-linux-x64 node
echo 'export PATH=$PATH:/opt/node/bin' >> ~/.bashrc
