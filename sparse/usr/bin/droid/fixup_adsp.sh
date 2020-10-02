#!/bin/sh

dmesg -w | awk '/Restart sequence for adsp completed/ { system("/usr/bin/systemctl-user restart pulseaudio") }'

