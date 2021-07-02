#!/bin/bash
cd images/defi_chain
docker build . -t defi_chain | while read line ; do echo "$(date)| $line"; done;
cd ../defi_wallet
docker build . -t defi_wallet | while read line ; do echo "$(date)| $line"; done;