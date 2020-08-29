# Set Background To Previously Active
wal -i /home/tascord/.config/Background.jpg > /dev/null

# Opacity
picom -b > /dev/null

# Statusbar
sh /home/tascord/.config/polybar/launch.sh > /dev/null

# Background
echo "Downloading a new Background..."
wget -q https://picsum.photos/1920/1080/ -O /home/tascord/.config/Background.jpg
wal -c > /dev/null
echo "Setting Colour Scheme..."
wal -i /home/tascord/.config/Background.jpg > /dev/null
feh --bg-scale /home/tascord/.config/Background.jpg > /dev/null
echo "Setting Discord Color..."
pywal-discord > /dev/null
echo "Setting Lock Screen..."
betterlockscreen -u /home/tascord/.config/Background.jpg > /dev/null
echo "Finished :)"
