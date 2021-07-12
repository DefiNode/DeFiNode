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
	sudo -E sh 01_system_preparation.sh
}

do_02_download_snapshot() {
	echo 02_download_snapshot
	sudo -E sh 02_download_snapshot.sh
	### wait for SPACE key pressed
	hold=' '
	echo "Press 'SPACE' to return to menu"
	tty_state=$(stty -g)
	stty -icanon
	until [ -z "${hold#$in}" ] ; do
	    in=$(dd bs=1 count=1 </dev/tty 2>/dev/null)
	done
	stty "$tty_state"
	#####
	
	do_show_menu
}

do_03_build_images() {
	echo 03_build_images
	sudo -E sh 03_build_images.sh
	### wait for SPACE key pressed
	hold=' '
	echo "Press 'SPACE' to return to menu"
	tty_state=$(stty -g)
	stty -icanon
	until [ -z "${hold#$in}" ] ; do
	    in=$(dd bs=1 count=1 </dev/tty 2>/dev/null)
	done
	stty "$tty_state"
	#####
	
	do_show_menu
}

do_04_run_definode() {
	echo 04_run_definode
	sudo -E sh 04_run_definode.sh
}

do_05_show_defi_chain_logs() {
	echo 05_show_defi_chain_logs
	sudo -E sh 05_show_defi_chain_logs.sh
}

do_06_show_defi_wallet_logs() {
	echo 06_show_defi_wallet_logs
	sudo -E sh 06_show_defi_wallet_logs.sh
}

do_07_stop_definode() {
	echo 07_stop_definode
	sudo -E sh 07_stop_definode.sh
	### wait for SPACE key pressed
	hold=' '
	echo "Press 'SPACE' to return to menu"
	tty_state=$(stty -g)
	stty -icanon
	until [ -z "${hold#$in}" ] ; do
	    in=$(dd bs=1 count=1 </dev/tty 2>/dev/null)
	done
	stty "$tty_state"
	#####
	
	do_show_menu
}

do_08_repair_definode() {
	echo 08_repair_definode
	sudo -E sh 08_repair_definode.sh
	### wait for SPACE key pressed
	hold=' '
	echo "Press 'SPACE' to return to menu"
	tty_state=$(stty -g)
	stty -icanon
	until [ -z "${hold#$in}" ] ; do
	    in=$(dd bs=1 count=1 </dev/tty 2>/dev/null)
	done
	stty "$tty_state"
	#####
	
	do_show_menu
}

do_09_backup_defiwallet() {
	echo 09_backup_defiwallet
	sudo -E sh 09_backup_defiwallet.sh
	### wait for SPACE key pressed
	hold=' '
	echo "Press 'SPACE' to return to menu"
	tty_state=$(stty -g)
	stty -icanon
	until [ -z "${hold#$in}" ] ; do
	    in=$(dd bs=1 count=1 </dev/tty 2>/dev/null)
	done
	stty "$tty_state"
	#####
	
	do_show_menu
}

do_10_init_defihome() {
	echo 10_init_defihome
	sudo -E sh 10_init_defihome.sh
}

do_finish() {
	echo Goodbye
}

#########################################Start########################################################

do_show_menu() {
	OPTION=$(whiptail --title "DeFiNode" --menu "Choose your option" 18 60 10 \
	"1" "System preparation with reboot" \
	"2" "Download Snapshot (5 min)" \
	"3" "Build chain and app (2.5 hours)" \
	"4" "Run DeFi Node" \
	"5" "Show Defi Chain logs" \
	"6" "Show Wallet logs" \
	"7" "Stop DeFi Node" \
	"8" "Repair DeFi Node" \
	"9" "Backup DeFi Wallet" \
	"10" "Initialize DeFi Home with logout" 3>&1 1>&2 2>&3)

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
			8) do_08_repair_definode ;;
			9) do_09_backup_defiwallet ;;
			10) do_10_init_defihome ;;
			*) whiptail --msgbox "Programmer error: unrecognized option" 20 60 1 ;;
		esac || whiptail --msgbox "There was an error running option $OPTION" 20 60 1
	else
		exit 1
	fi
}

do_show_menu


