#!/bin/sh

path=~/images/wallpapers/beach
cmd='xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s'
hour=`date +%H`

if [ $hour -ge 23 -o $hour -lt 7 ]
then wfile=0.jpg
else if [ $hour -lt 10 ]
then wfile=1.jpg
else if [ $hour -lt 14 ]
then wfile=2.jpg
else if [ $hour -lt 18 ]
then wfile=3.jpg
else if [ $hour -lt 21 ]
then wfile=4.jpg
else wfile=5.jpg
fi
fi
fi
fi
fi

$cmd $path/$wfile