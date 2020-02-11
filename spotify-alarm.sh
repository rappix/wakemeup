#!/bin/bash

# COMMAND TO START THIS
# run_alarm

seconds=60
volume=100-$seconds
counter=0

if pgrep -x "spotify" > /dev/null
then
	# spotify is running already
	sleep 1
else
	# spotify is not running
	nohup spotify >/dev/null 2>&1 &
	sleep 1
fi

sleep 5

# play spotify
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Play

# switch to next song
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next

while [ $counter -lt $seconds ]; do
	let counter=counter+1
	let volume=volume+1

	pactl -- set-sink-volume 0 $volume%

	# echo The counter is $counter
	# echo The volume is $volume
	# echo The seconds is $seconds

	sleep 1
done

exit 0
