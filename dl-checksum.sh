#!/usr/bin/env sh
VER=${1:-3.4.0}
DIR=~/Downloads
FILE=luarocks-${VER}.tar.gz
URL=http://luarocks.org/releases/$FILE
LFILE=$DIR/$FILE

if [ ! -e $LFILE ];
then
    wget -q -O $LFILE $URL
fi

printf "  # %s\n" $URL
printf "  '%s': sha256:%s\n" $VER $(sha256sum $LFILE | awk '{print $1}')
