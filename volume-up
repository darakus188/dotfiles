#!/bin/bash

SINK=$( pactl list short sinks | sed -e 's,^\([0-9][0-9]*\)[^0-9].*,\1,' | head -n 1 )
CURRENT=$( pactl list sinks | grep 'Volume: fr' | awk '{print $5}' | sed s/%/''/g )
if [ $CURRENT -gt 95 ]
then
    let "LEFTOVER = 100 - $CURRENT"
fi

if [ $CURRENT -lt 96 ]
then
    pactl set-sink-volume $SINK +5%
elif [ "$LEFTOVER" != "0" ]
then
    pactl set-sink-volume $SINK +${LEFTOVER}%
fi
