#!/usr/bin/env bash
tmux send-keys -Rt1  C-e C-x Enter

cd sw
ino build
ino upload
cd ..

tmux send-keys -Rt1  'picocom -e e /dev/ttyACM0' Enter
