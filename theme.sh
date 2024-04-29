#!/bin/sh
while true
do
	file=$(find /home/d/Pictures/wallpapers/ -type f | shuf -n 1)
wal -i $file
pywalfox update
sleep 15m
done
