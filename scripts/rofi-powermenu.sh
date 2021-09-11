#!/usr/bin/env bash

# rofi-power
# Use rofi to call systemctl for shutdown, reboot, etc

# 2016 Oliver Kraitschy - http://okraits.de

OPTIONS="Poweroff\nReboot\nLock\nLogout\nReload I3\nRestart I3\nMonitors\nPolybar"

LAUNCHER="rofi -theme nralbrecht -dmenu -i -p Power Menu:"
LOCKER="i3lock -c 111111"

option=`echo -e $OPTIONS | $LAUNCHER | awk '{print $1}' | tr -d '\r\n'`
if [ ${#option} -gt 0 ]
then
    case $option in
      Poweroff)
        systemctl poweroff
        ;;
      Reboot)
        systemctl reboot
        ;;
      Lock)
        sh $HOME/scripts/monitors-sleep.sh
        ;;
      # Suspend)
      #   "$LOCKER"; systemctl suspend
      #   ;;
      # Hibernate)
      #   "$LOCKER"; systemctl hibernate
      #   ;;
      Logout)
        i3-msg "exit"
        ;;
      Reload)
        i3-msg "reload"
        ;;
      Restart)
        i3-msg "restart"
        ;;
      Monitors)
        sh $HOME/scripts/xrandr-setup.sh
        ;;
      Polybar)
        sh $HOME/.config/polybar/launch.sh
        ;;
      *)
        ;;
    esac
fi
