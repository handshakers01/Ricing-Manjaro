#!/usr/bin/env bash

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

polybar yrcorvine &
polybar yrcorvine2 &

echo "Bars launched..."
