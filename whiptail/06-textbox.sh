#!/bin/sh

# shellcheck disable=SC2046
set -f
set +f -- $(stty size)

height=$(($1 / 2))
width=$(($2 / 2))

whiptail \
  --title 'textbox' \
  --backtitle 'whiptail' \
  --scrolltext \
  --textbox \
  /usr/share/doc/nano-7.2/README \
  "${height}" \
  "${width}"
