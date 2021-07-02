#!/bin/sh
# This script creates base64 encoded version of the rpc auth string for nginx to use
# We need the sh --login to persist the variable outside this subshell
# We need printf to not add a newline at the end of $RPC_AUTH (which echo does)
export RPC_AUTH64=$(printf $RPC_AUTH | base64)
sh --login
echo 'Base64 encoded the RPC_AUTH string';