# Killall polybars
killall -q polybar

polybar -q top > /dev/null & disown
polybar -q bottom > /dev/null & disown
