#!/bin/bash

bash /usr/local/nvm/nvm.sh
Xvfb :0 -ac -screen 0 1366x768x24 &
bash -c "$@"