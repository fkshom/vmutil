#!/usr/bin/env bash

if ! type wget >/dev/null 2>&1; then
  sudo apt-get update && sudo apt-get install wget
fi

REPOSITORY=https://raw.githubusercontent.com/fkshom/vmutil/master

FILES="clean.sh enable_llmnr.sh sethostname.sh zeronize.sh"

for file in ${FILES}; do
    wget ${REPOSITORY}/${file}
    chmod +x ${file}
done
