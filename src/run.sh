#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# Go言語をインストールする。HelloWorldを実行する。
# CreatedAt: 2020-11-07
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	cd "$HERE"
	. ./install.sh
	which go
	go version
	go run ./hello.go
}
Run "$@"
