

#!/bin/sh

symbol() {
[ $(cat /sys/class/net/w*/operstate) = down ] && echo ﹫ && exit
echo ﹦
}

name() {
iwctl station wlan0 show | grep "Connected network" | sed 's/Connected network\ //g' | sed -e 's/^[[:space:]]*//;s/[[:space:]]*$//'
}

[ "$1" = "icon" ] && symbol && exit
[ "$1" = "name" ] && name && exit
