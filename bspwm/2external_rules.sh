#!/bin/sh

id="${1?}" \
#instance="$3" \
#class="$2";

wid=$1
class=$2
instance=$3
consequences=$4

#case "$class" in
#    (foo)
#        bar;;
#    ("")
#        unset -v _NET_WM_PID;
#        . /dev/fd/0 2>/dev/null <<IN
#        : \"\${$(
#            xprop \
#                -id "$id" \
#                -notype \
#                -f _NET_WM_PID 32c '=$0' \
#                _NET_WM_PID;
#        )}\";
#IN
#        case "$(ps -p "${_NET_WM_PID:?}" -o comm= 2>/dev/null)" in
#            (spotify)
#                echo desktop=^7 follow=on;;
#        esac;;
#esac;


case $CLASS in
	“Steam”)
		TITLE=$(xtitle “$WID”)
		case $TITLE in
			“Friends List”)
				echo “state = floating”
                echo “desktop='^11'“
				;;
		esac
		;;
esac