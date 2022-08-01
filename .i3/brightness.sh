#!/bin/bash

icon_path=/home/yrcorvine/.icons/Gruvbox-Material-Dark/16x16/apps/brightness-systray.svg
notify_id=817

function get_brightness {
  xbacklight -get
}

function send_notification {
  brightness=$(get_brightness)
  # Make the bar with the special character ─ (it's not dash -)
  # https://en.wikipedia.org/wiki/Box-drawing_character
  bar=$(seq -s "─" 0 $((brightness / 5)) | sed 's/[0-9]//g')
  # Send the notification
  dunstify -i "$icon_path" -r 5555 -u normal "  $bar"
}

send_notification
