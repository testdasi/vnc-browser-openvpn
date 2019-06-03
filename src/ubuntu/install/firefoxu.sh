#!/usr/bin/env bash
set -e

echo "Install Firefox (Ubuntu latest)"

apt-get update
apt-get install -y firefox
apt-get clean -y
