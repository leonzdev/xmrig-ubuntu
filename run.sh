#!/usr/bin/env sh
if [ "x$URL" = 'x' ];
then
    echo "URL is not defined or is empty"
    exit 1
fi
if [ "x$WALLET_ADDRESS" = 'x' ];
then
    echo "WALLET_ADDRESS is not defined or is empty"
    exit 1
fi

PASSWORD=${PASSWORD:-x}
THREADS=${THREADS:-1}
THROTTLE=${THROTTLE:-101}
./app -o $URL -u $WALLET_ADDRESS -p $PASSWORD -t $THREADS -v 2 --donate-level=1 --no-color --throttle=$THROTTLE

