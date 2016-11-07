#!/bin/bash

Xvfb $DISPLAY -ac -screen 0 ${RESOLUTION}x24 &
exec "$@"