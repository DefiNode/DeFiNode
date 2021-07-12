#!/bin/bash

## Setup DeFiNode home directory
STARTUP_DIR=$(dirname "$(realpath $0)")""

echo "export DEFI_HOME=$STARTUP_DIR" > /etc/profile.d/defi-home.sh
