#!/usr/bin/env bash

sudo sed -i -e 's/#LLMNR=no/LLMNR=yes/' /etc/systemd/resolved.conf
sudo systemctl restart systemd-resolved
