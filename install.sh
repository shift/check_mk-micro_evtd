#!/usr/bin/env bash

DEST=`telnet localhost 6556 | head -n 10 | awk -F": " '/^LocalDirectory/{print $2}'`
cp -av micro_evtd $DEST
echo "Done."
