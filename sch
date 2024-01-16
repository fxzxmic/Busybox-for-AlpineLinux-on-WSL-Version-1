#!/bin/sh
if [ "$1" == "-h" -o "$1" == "--help" ]; then
	echo -e "Search for command history and display it according to the specified number.\n\nUsage: $(basename $0) KEY-WORD [[+]N[bkm]]"
else
	if [ $# -eq 1 ]; then
		grep "$1" ~/.ash_history
	elif [ $# -eq 2 -a "$2" -eq "$2" ] 2>/dev/null; then
		grep "$1" ~/.ash_history | tail -n "$2"
	else
		echo "Parameter Error" >&2
		return 1
	fi
fi