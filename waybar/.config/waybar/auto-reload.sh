while inotifywait -e close_write ~/.config/waybar;
do
	killall -SIGUSR2 waybar
	# waybar > /dev/null 2>&1 &
done
