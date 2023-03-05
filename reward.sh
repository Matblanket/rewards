dir="/home/hecarim/Documents/Python/rewards"
startval=$(sed -n "1 p" "$dir/var.txt")
ffmpeg -loglevel quiet -ss $((startval)) -i $dir/resources/.temp.m4a -t 60 $dir/.curr.m4a -y
echo $((startval+60)) > $dir/var.txt
mpv --no-terminal $dir/.curr.m4a
