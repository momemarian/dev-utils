if [ ! -d "$1" ]; then
	echo project folder $1 does not exist
	exit 1
fi

tmux send-keys -Rt1  C-e C-x Enter

ino build
ino upload

tmux send-keys -Rt1  'picocom -e e /dev/ttyACM0' Enter
