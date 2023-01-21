#!/bin/bash

: 'module for copying data from source directory to destination directory'

#define directories
loc=`pwd`
dest=$loc/data_for_copy; mkdir -p $dest
echo "destination directory is ${dest}"

#parameter input
FILES=( T1 RS1 )     #define files types to copy
ext=nii      #define file extension

#subject loop
SUB=`cat id_sub`
for sub in ${SUB[@]}
do
  mkdir -p ${dest}/${sub}
  for file in ${FILES[@]}
  do
    if [ ! -f ${dest}/${sub}/${sub}.${file}.${ext} ]; then
      echo "\ncopying ${sub} ${file} to destination directory"
      cp ${sub}/${sub}.${file}.${ext} ${dest}/${sub}/
    else
      echo "${sub} ${file} already copied to destination directory  \nskipping condition"
    fi
  done
done
