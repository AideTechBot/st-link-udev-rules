#!/bin/bash

thisdir=$(readlink -m $(dirname $0))
rules_path=/etc/udev/rules.d/

# Finally do the installation
install -D -o root -g root -m 644 -t $rules_path $thisdir/*.rules

echo >&2 "Package installed."
$thisdir/cleanup.sh
