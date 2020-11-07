#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# Go言語をインストールする。https://golang.org/dl/
# CreatedAt: 2020-11-07
#---------------------------------------------------------------------------
Run() {
	local FILE=go1.15.4.linux-armv6l.tar.gz
	local PATH_INST="$HOME/root/sys/env/tool"
	[ -d "$PATH_INST/go" ] || {
		wget https://golang.org/dl/$FILE
		tar -C "$PATH_INST" -zxvf $FILE
		export PATH="$PATH:$PATH_INST/go/bin"
	}
}
Run "$@"
