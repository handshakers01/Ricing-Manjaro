#!/usr/bin/env bash

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

polybar corvine &
polybar-msg cmd restart &

echo "Bars launched..."
