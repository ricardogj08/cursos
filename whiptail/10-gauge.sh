#!/bin/sh

{
  for ((i = 0 ; i <= 100 ; i+=5)); do
    sleep 0.1
    echo "$i"
  done
} | whiptail \
  --title 'gauge' \
  --backtitle 'whiptail' \
  --gauge \
  'Espera un momento...' \
  6 \
  32 \
  0
