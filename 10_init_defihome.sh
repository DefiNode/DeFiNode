#!/bin/bash

## Setup DeFiNode home directory
STARTUP_DIR=$(dirname "$(realpath $0)")""

echo "export DEFI_HOME=$STARTUP_DIR" > /etc/profile.d/defi-home.sh
echo ""
echo ""
echo "***************************************************************************"
echo "* DeFi Home is now set to: "$(dirname "$(realpath $0)")
echo "*                                                                                "
echo "* For the chang to the DeFi home directory to take effect, please"
echo "* log out and in again."
echo "***************************************************************************"
echo""
