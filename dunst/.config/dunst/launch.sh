#!/bin/sh

# Killall dunst
pidof dunst && killall dunst

dunst &
