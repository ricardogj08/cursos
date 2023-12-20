#!/bin/sh

# shellcheck disable=SC2046
set -f
set +f -- $(stty size)

height=$(($1 / 2))
width=$(($2 / 2))

whiptail \
  --title 'yesno' \
  --backtitle 'whiptail' \
  --yes-button 'Sí' \
  --no-button 'No' \
  --yesno \
  '¿Deseas guardar los cambios?' \
  0 \
  0
