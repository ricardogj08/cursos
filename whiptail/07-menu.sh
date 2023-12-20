#!/bin/sh

# shellcheck disable=SC2046
set -f
set +f -- $(stty size)

height=$(($1 / 2))
width=$(($2 / 2))
numitems=$((height / 2))

whiptail \
  --title 'menu' \
  --backtitle 'whiptail' \
  --ok-button 'Aceptar' \
  --cancel-button 'Cancelar' \
  --menu \
  'Selecciona una opción:' \
  "${height}" \
  "${width}" \
  "${numitems}" \
  '<-- Back' 'Return to the main menu.' \
  'Add User' 'Add a user to the system.' \
  'Modify User' 'Modify an existing user.' \
  'List Users' 'List all users on the system.' \
  'Add Group' 'Add a user group to the system.' \
  'Modify Group' 'Modify a group and its list of members.' \
  'List Groups' 'List all groups on the system.'
