#!/bin/bash

export DEFI_HOME=$(dirname "$(realpath $0)")""

defiSetupBuildStart=$(date +%s)

#sudo -E sh 01_system_preparation.sh
#sudo -E sh 02_download_snapshot.sh
#sudo -E sh 03_build_images.sh

defiSetupBuildEnd=$(date +%s)

echo ""
echo ""
echo "***************************************************************************"
echo "*   Elapsed Setup & Build Time: " $((defiSetupBuildEnd-$defiSetupBuildStart)) " seconds"
echo "***************************************************************************"
echo ""
echo "==========================================================================="
echo "="
echo "= The basic infrastructure, DeFi Node and DeFi Wallet are now created. To"
echo "= get a clean initialization of the DeFi Node environment, a reboot of the"
echo "= RaspberryPI must be performed."
echo "="
echo "= After the reboot, the DeFi Node can be started using the following"
echo "= options:"
echo "=          1. Activate 'DeFi Node Main Menu' (desktop shortcut). In menu"
echo "=             window select '4 Run DeFi Node'."
echo "=          2. Execute command line 'sudo -E sh 04_run_definode.sh' in the"
echo "=             DeFi home directory."
echo ""
echo "= To display the DeFi Wallet, avtivate desktop shortcut 'DeFi Wallet'."
echo "="
echo "==========================================================================="
echo ""
