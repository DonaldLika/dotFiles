#!/bin/bash

case "$1" in
    lock)
	xd && lock
        ;;
    logout)
        xd && xfce4-session-logout
        ;;
    suspend)
        xd && systemctl suspend
        ;;
    hibernate)
        xd && systemctl hibernate
        ;;
    reboot)
        xd && systemctl reboot
        ;;
    shutdown)
        xd && systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
