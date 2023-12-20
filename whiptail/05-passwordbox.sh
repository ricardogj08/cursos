#!/bin/sh

whiptail \
  --title 'passwordbox' \
  --backtitle 'whiptail' \
  --ok-button 'Aceptar' \
  --cancel-button 'Cancelar' \
  --passwordbox \
  'Contraseña:' \
  8 \
  32
