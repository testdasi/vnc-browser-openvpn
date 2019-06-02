#!/usr/bin/env bash

echo "Install Tor"
gpg --homedir "$HOME/.local/share/torbrowser/gnupg_homedir" --refresh-keys --keyserver keyserver.ubuntu.com
apt-get install -y torbrowser-launcher
apt-get clean -y
