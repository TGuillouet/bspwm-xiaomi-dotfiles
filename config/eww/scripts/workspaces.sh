#!/bin/sh

workspaces() {

# ws1=I
# ws2=II
# ws3=III
# ws4=IV
# ws5=V
# ws6=VI

# Unoccupied
# un="0"

# check if Occupied
# o1=$(bspc query -D -d .occupied --names | grep "$ws1" )
# o2=$(bspc query -D -d .occupied --names | grep "$ws2" )
# o3=$(bspc query -D -d .occupied --names | grep "$ws3" )
# o4=$(bspc query -D -d .occupied --names | grep "$ws4" )
# o5=$(bspc query -D -d .occupied --names | grep "$ws5" )
# o6=$(bspc query -D -d .occupied --names | grep "$ws6" )

# check if Focused
# f1=$(bspc query -D -d focused --names | grep "$ws1" )
# f2=$(bspc query -D -d focused --names | grep "$ws2" )
# f3=$(bspc query -D -d focused --names | grep "$ws3" )
# f4=$(bspc query -D -d focused --names | grep "$ws4" )
# f5=$(bspc query -D -d focused --names | grep "$ws5" )
# f6=$(bspc query -D -d focused --names | grep "$ws6" )

# check if Urgent
# u1=$(bspc query -D -d .urgent --names | grep 1)
# u2=$(bspc query -D -d .urgent --names | grep 2)
# u3=$(bspc query -D -d .urgent --names | grep 3)
# u4=$(bspc query -D -d .urgent --names | grep 4)
# u5=$(bspc query -D -d .urgent --names | grep 5)

focused=$(bspc query -D -d focused --names)
echo $focused
}

workspaces
bspc subscribe desktop node_transfer | while read -r _ ; do
workspaces
done
