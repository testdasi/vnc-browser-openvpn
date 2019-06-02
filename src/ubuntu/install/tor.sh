#!/usr/bin/env bash

echo "Install Tor"
gpg --homedir "$HOME/.local/share/torbrowser/gnupg_homedir" --refresh-keys --keyserver keyserver.ubuntu.com
apt-get install -y torbrowser-launcher
apt-get clean -y

cat <<EOF >/headless/Desktop/TOR.desktop
[Desktop Entry]
Type=Application
Name=Tor Browser
GenericName=Web Browser
Comment=Tor Browser is +1 for privacy and -1 for mass surveillance
Categories=Network;WebBrowser;Security;
Exec=sh -c '"/headless/.local/share/torbrowser/tbb/x86_64/tor-browser_en-US/Browser/start-tor-browser" --detach || ([ !  -x "/headless/.local/share/torbrowser/tbb/x86_64/tor-browser_en-US/Browser/start-tor-browser" ] && "$(dirname "$*")"/Browser/start-tor-browser --detach)' dummy %k
X-TorBrowser-ExecShell=./Browser/start-tor-browser --detach
Icon=/headless/.local/share/torbrowser/tbb/x86_64/tor-browser_en-US/Browser/browser/chrome/icons/default/default128.png
StartupWMClass=Tor Browser
EOF
