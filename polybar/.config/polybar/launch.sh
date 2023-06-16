# Killall polybars
killall -q polybar

for m in $(xrandr -q | grep " connected" | cut -d " " -f1); do
	MONITOR="$m" polybar -q top --config=~/.config/polybar/config.ini > /dev/null & disown
	MONITOR="$m" polybar -q bottom --config=~/.config/polybar/config.ini > /dev/null & disown
done
