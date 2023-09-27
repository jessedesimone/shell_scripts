#!/bin/bash

#module to connect to LRN Lab Linux Machines

echo -e 'Lab Linux Machines:
=============================
Red
Orange
Blue\n'

read -p "Type machine name and press enter: " key

case $key in
    [Red]* ) ip="12.345.67.890"; ssh <username>@${ip};;
    [Orange]* ) echo "IP address for $key is missing";;
    [Blue]* ) ip="12.345.67.890"; ssh <username>@${ip}
esac