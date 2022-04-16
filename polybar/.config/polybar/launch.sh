# Killall polybars
killall -q polybar

polybar -q top > /dev/null & disown
