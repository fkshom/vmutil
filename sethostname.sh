#!/usr/bin/env bash

set -x
USAGE() {
    echo "$0 NEWHOSTNAME"
}

cur=`hostname`
new=$1

if [ -z "${new}" ]; then
  USAGE
  exit 1
fi

sudo hostnamectl set-hostname ${new}

sudo sed -i "s/ ${cur}/ ${new}/g" /etc/hosts
