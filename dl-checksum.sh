#!/usr/bin/env bash
DIR=~/Downloads

dl() {
    local -r ver=$1
    local -r file=luarocks-${ver}.tar.gz
    local -r url=http://luarocks.org/releases/$file
    local -r lfile=$DIR/$file

    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi

    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(sha256sum $lfile | awk '{print $1}')
}

dl ${1:-3.5.0}
