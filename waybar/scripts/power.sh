#!/bin/bash

entries="󰗽  Logout\n⏾  Suspend\n⭮  Reboot\n⏻  Shutdown"

selected=$(echo -e $entries|wofi --width 100 --height 200 --xoffset 1150 --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec sudo reboot;;
  shutdown)
    exec sudo shutdown -h now;;
esac
