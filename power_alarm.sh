#!/bin/bash


file="/sys/class/power_supply/BAT0/capacity"

powernow=$(cat "$file")


if  [ $powernow -ge  20 ];then

for i in 1 2 3 4 5
do
  
  echo 1 | sudo tee  /sys/devices/platform/i8042/serio0/input/input3/input3::capslock/brightness
  rhythmbox-client --play-uri=/home/aswin/scripts/beep.mp3
  sleep 0.5
   echo 0 | sudo tee  /sys/devices/platform/i8042/serio0/input/input3/input3::capslock/brightness
  echo 1 | sudo tee  /sys/devices/platform/i8042/serio0/input/input3/input3::numlock/brightness
  sleep 0.5
  echo 0 | sudo tee  /sys/devices/platform/i8042/serio0/input/input3/input3::numlock/brightness
done

fi



















