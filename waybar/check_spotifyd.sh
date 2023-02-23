if pgrep -x "spotifyd"; then
	echo "SpotifyD Detected"
	exit
else
	echo "No"
	exit 1
fi
