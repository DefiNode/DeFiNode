#!/bin/sh

#########################################Var's########################################################
IFCONFIG=$(ifconfig)

#########################################Root check########################################################
# Check if root
if [ "$(whoami)" != "root" ]; then
        whiptail --msgbox "Sorry you are not root. You must type: sudo sh 00_definode.sh" 20 45 1
        exit
fi
#########################################Whiptail check########################################################
	if [ $(dpkg-query -W -f='${Status}' whiptail 2>/dev/null | grep -c "ok installed") -eq 1 ];
then
        sleep 0

else
	apt-get install whiptail -y
fi


#########################################tools menu########################################################
do_01_system_preparation() {
	echo 01_system_preparation
	sudo sh 01_system_preparation.sh
}

do_02_download_snapshot() {
	echo 02_download_snapshot
	sudo sh 02_download_snapshot.sh
}

do_03_build_images() {
	echo 03_build_images
	sudo sh 03_build_images.sh
}

do_04_run_definode() {
	echo 04_run_definode
	sudo sh 04_run_definode.sh
}

do_05_show_defi_chain_logs() {
	echo 05_show_defi_chain_logs
	sudo sh 05_show_defi_chain_logs.sh
}

do_06_show_defi_wallet_logs() {
	echo 06_show_defi_wallet_logs
	sudo sh 06_show_defi_wallet_logs.sh
}

do_07_stop_definode() {
	echo 07_stop_definode
	sudo sh 07_stop_definode.sh
}

do_finish() {
	echo Goodbye
}

#########################################Start########################################################



OPTION=$(whiptail --title "DefiNode" --menu "Choose your option" 15 60 7 \
"1" "System preparation with reboot" \
"2" "Download Snapshot (10 min)" \
"3" "Build chain and app (3 hours)" \
"4" "Run definode" \
"5" "Show DefiChain logs" \
"6" "Show Wallet logs" \
"7" "Stop definode" 3>&1 1>&2 2>&3)

RET=$?
if [ $RET -eq 1 ]; then
	do_finish
elif [ $RET -eq 0 ]; then
	case "$OPTION" in
		1) do_01_system_preparation ;;
		2) do_02_download_snapshot ;;
		3) do_03_build_images ;;
		4) do_04_run_definode ;;
		5) do_05_show_defi_chain_logs ;;
		6) do_06_show_defi_wallet_logs ;;
		7) do_07_stop_definode ;;
		*) whiptail --msgbox "Programmer error: unrecognized option" 20 60 1 ;;
	esac || whiptail --msgbox "There was an error running option $OPTION" 20 60 1
else
	exit 1
fi

