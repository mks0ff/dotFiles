#!/bin/bash

if [$# -ne 1] ; then
  echo "Usage : ssh-add-pass.sh keyfile"
  exit 1
fi

pass="accor-2016"

expect << EOF
  spawn ssh-add $1
  expect "Enter passphrase"
  send "$pass\n"
  expect eof
EOF
