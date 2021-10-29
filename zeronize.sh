#!/usr/bin/env bash

set -x

dd if=/dev/zero of=./zero bs=100M
rm -f ./zero