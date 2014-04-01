#!/bin/bash

flags=
while [[ $# -gt 0 ]]
do
	case "$1" in
	-f|--force)
		flags="-f"
		;;
	*)
		echo "Unknown option(s): $@" >&2
		exit 1
		;;
	esac
	shift
done

pkg=$(cd $(dirname $BASH_SOURCE)/.. && pwd)
ln -s $flags $pkg/share/gdbinit ~/.gdbinit
