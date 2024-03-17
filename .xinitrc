# Disable automatic screen blanking:
xset -dpms

# Drop resolution for better performance:
xrandr -s 1920x1080

# Remove data from previous sessions & crashes:
rm -rf ~/.mozilla

# Start web browser and scale it to the desired resolution:
firefox --kiosk https://dimsumlabs.github.io/dsl-teevee/ &
( sleep 5; xdotool search --name "Mozilla Firefox" windowsize 1920 1080 ) &
( sleep 10; xdotool search --name "Mozilla Firefox" windowsize 1920 1080 ) &
( sleep 15; xdotool search --name "Mozilla Firefox" windowsize 1920 1080 ) &

wait %1
