#!/usr/bin/env bash

set -x

sudo apt-get clean
sudo rm -rf /var/lib/apt/lists/*

echo -n | sudo tee /etc/machine-id
sudo rm /var/lib/dbus/machine-id
sudo ln -s /etc/machine-id /var/lib/dbus/machine-id
