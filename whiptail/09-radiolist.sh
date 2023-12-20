#!/bin/sh

# shellcheck disable=SC2046
set -f
set +f -- $(stty size)

height=$(($1 / 2))
width=$(($2 / 2))
numitems=$((height / 2))

whiptail \
  --title 'radiolist' \
  --backtitle 'whiptail' \
  --ok-button 'Aceptar' \
  --cancel-button 'Cancelar' \
  --radiolist \
  'Selecciona una opción:' \
  "${height}" \
  "${width}" \
  "${numitems}"  \
  'NET_OUTBOUND' 'Allow connections to other hosts' 0 \
  'NET_INBOUND' 'Allow connections from other hosts' 0 \
  'LOCAL_MOUNT' 'Allow mounting of local devices' 1 \
  'REMOTE_MOUNT' 'Allow mounting of remote devices' 0

