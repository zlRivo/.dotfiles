# Killall polybars
killall -q polybar

polybar -q top --config=~/.config/polybar/config.ini > /dev/null & disown
polybar -q bottom --config=~/.config/polybar/config.ini > /dev/null & disown
