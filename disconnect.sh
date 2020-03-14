#!/bin/bash

if [ $# -lt 1 ]
then
  echo "Please provide a parameter specifying for how many minutes would you like to disconnect"
  echo "Usage: sh deep-work.sh 60"
  exit
fi

SECONDS=$(($1*60))

disconnect () {
  networksetup -setnetworkserviceenabled Wi-Fi off
  sleep $SECONDS
  networksetup -setnetworkserviceenabled Wi-Fi on
}

echo "turning your Wi-Fi off for $1 minutes ($SECONDS seconds)"

disconnect &


