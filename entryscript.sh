#!/bin/bash

Xvfb :20 -screen 0 2560x1440x32 &
x11vnc -passwd test -display :20 -N -forever &
tail -f /dev/null