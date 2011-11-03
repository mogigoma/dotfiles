#!/bin/sh

synergys -n brisbane
xmodmap ~/.Xmodmap

exec awesome 1>$HOME/.config/awesome/log 2>&1
