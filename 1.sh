#!/bin/bash
##解决文件名中有空格的问题
IFS=$'\n'
PWD=`pwd`
for link in $(find ./ -type l)
do
  echo
  echo "Link is:"
  echo $link
  loc=$(dirname $link)
  dir=$(readlink -f $link)
  echo "location is:"
  echo $loc
  echo "dir is:"
  echo $dir
  rm $link
  cp -rf $dir $link
done