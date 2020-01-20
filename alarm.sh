#!/bin/bash

# COMMAND TO START THIS
# gnome-terminal --maximize -e './alarm.sh'

seconds=60
volume=100-$seconds
counter=0

pactl -- set-sink-volume 0 $volume%

sleep 5

# xdg-open "https://www.youtube.com/watch?v=7ysFgElQtjI&list=RD7ysFgElQtjI"
google-chrome --new-window "https://www.youtube.com/watch?v=0mFFFc_oyBo&list=RD0mFFFc_oyBo&start_radio=1"

sleep 2

echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";
echo "                    ██████╗  ██████╗  ██████╗ ██████╗                          ";
echo "                   ██╔════╝ ██╔═══██╗██╔═══██╗██╔══██╗                         ";
echo "                   ██║  ███╗██║   ██║██║   ██║██║  ██║                         ";
echo "                   ██║   ██║██║   ██║██║   ██║██║  ██║                         ";
echo "                   ╚██████╔╝╚██████╔╝╚██████╔╝██████╔╝                         ";
echo "                    ╚═════╝  ╚═════╝  ╚═════╝ ╚═════╝                          ";
echo "                                                                               ";
echo "                   ███╗   ███╗ ██████╗ ██████╗ ███╗   ██╗██╗███╗   ██╗ ██████╗ ";
echo "                   ████╗ ████║██╔═══██╗██╔══██╗████╗  ██║██║████╗  ██║██╔════╝ ";
echo "                   ██╔████╔██║██║   ██║██████╔╝██╔██╗ ██║██║██╔██╗ ██║██║  ███╗";
echo "                   ██║╚██╔╝██║██║   ██║██╔══██╗██║╚██╗██║██║██║╚██╗██║██║   ██║";
echo "                   ██║ ╚═╝ ██║╚██████╔╝██║  ██║██║ ╚████║██║██║ ╚████║╚██████╔╝";
echo "                   ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ";
echo "                                                                               ";
echo "                                                      ██╗                      ";
echo "                                                   ██╗╚██╗                     ";
echo "                                                   ╚═╝ ██║                     ";
echo "                                                   ██╗ ██║                     ";
echo "                                                   ╚═╝██╔╝                     ";
echo "                                                      ╚═╝                      ";
echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";
echo "                                                                               ";

while [ $counter -lt $seconds ]; do
	let counter=counter+1
	let volume=volume+1

	pactl -- set-sink-volume 0 $volume%

	# echo The counter is $counter
	# echo The volume is $volume
	# echo The seconds is $seconds

	sleep 1
done

read -n 1 -s -r -p ""
