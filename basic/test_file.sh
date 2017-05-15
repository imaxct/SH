#!/bin/bash
echo "-----------------------------------------"
echo "Usage: `basename $0` filename or use pipe"
echo "-----------------------------------------"
echo

[ -f "$1" ] && echo "regular file"

[ -d "$1" ] && echo "directory"

function show_input_type(){
	[ -p /dev/fd/0 ] && echo "pipe input" || echo "standard input"
}

show_input_type "$*"

[ -h "$1" ] && echo "symbolic link"

[ -L "$1" ] && echo "symbolic link -L"

[ -O "$1" ] && echo "current user is the owner of $1"

[ -N "$1" ] && echo "modified after $1 was created"

