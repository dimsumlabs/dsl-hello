xrandr -s 1920x1080
rm -rf ~/.mozilla
firefox --kiosk https://dimsumlabs.github.io/dsl-teevee/ &
( sleep 5; xdotool search --name "Mozilla Firefox" windowsize 1920 1080 ) &
( sleep 10; xdotool search --name "Mozilla Firefox" windowsize 1920 1080 ) &
( sleep 15; xdotool search --name "Mozilla Firefox" windowsize 1920 1080 ) &
wait %1
