#!/bin/sh

case "$1" in
    "Shutdown") systemctl poweroff || sudo poweroff ;;
    "Reboot") systemctl reboot || sudo reboot ;;
    "Logout") bspc quit ;;
    "Lock") slock ;;
    *)
        echo "Shutdown"
        echo "Reboot"
        echo "Logout"
        echo "Lock"
        ;;
esac
