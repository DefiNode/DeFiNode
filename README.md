### DEVELOPMENT ONGOING...🔭

  # ✨ DeFiNode for more decentralization ✨

<!-- ADD IMAGE-->

**The DeFiNode is a do-it-yourself DeFiChain full node DeFiChain original source code. No code will be altered during installation and will 100% taken from the DeFiChain repository.**

## Basic Features

* **Easy installation** (Easy mode and Expert mode)
* **All functionalities of the official full node GUI wallet app**
* **Can run a Master node**
* **Controlled by web browser** (From your PC or smartphone)
* **100% open source**

## Table of Contents 🔭

**A. Shopping list**

**B. Tools needed**

**1. Basic Raspberry Pi setup**
  - **OS installation**
  - **Add coolers**
  - **Connections (Stick, PSU, Mouse, Keyboard, HDMI, Network)**
  - **First boot with monitor + mouse + keyboard**
      - **Initial setup**
      - **VNC activation (+ edit /boot/config.txt on stick: uncomment #hdmi force)**
      - **Edit /boot/config.txt for VNC only usage**
      - **(Optional) Edit resolution with “sudo raspberry-config”**
      - **(Optional) Change hostname to “definode” with “sudo raspberry-config”**
  - **Remote control VNCViewer**
  - **Download script and execution**
  - **First Wallet usage and test**
  
**2.	3D Printing**
  - **Download files**
  - **Slice files (Tips with Raft)**
  - **Print and Material (PLA)**
  - **Clean up and Test print**
  
**3.	Bonus (only for advanced users with soldering iron) not essential for operation, but very cool.**
  - **Solder LED ring**
  - **Assembly LED ring**
  - **Connect LED ring (right after step 4.c)**
  - **Install LED script**
  - **LED (rainbow) test and usage (in development)**
  
**4.	Custom Case assembly**
  - **Put Raspberry into case**
  - **Cut grids and insert**
  - **Connect PSU**
  - **Connect and assembly Fan**
  - **Final Assembly (Stick and Network cable)**
  - **Power on and Wallet usage**
  
**5.	FAQ and Trouble shooting guide**

### DEVELOPMENT ONGOING...🔭



(IMAGES)

### A. Basic Amazon Shopping List (with the dedicated DeFiNode Case, there will be a separate shopping list)

*Please try to use the exact hardware models that are recommended in the shopping lists. A monitor and mouse keyboard are needed for the initial setup. Estimated cost around 100-150 USD - based on shops and location.*

* Basics:

  - [x] Raspberry 4 4GB (or 8GB) [amazon link](https://www.amazon.com/-/de/dp/B07TC2BK1X)
  - [x] Power Supply US - USB-C, 5V, >=3A [amazon link](https://www.amazon.com/-/de/dp/B07TSDJSQH)
  - [x] Power Supply EU - USB-C, 5V, >=3A [amazon link](https://www.amazon.de/Jun_Electronic-Ladegerät-Netzteil-Schalter-Raspberry/dp/B07TYYV8GF/)
  - [x] 256GB - Samsung FIT Plus Flash Drive [amazon link](https://www.amazon.com/-/de/dp/B07D7Q41PM/) *min. 128GB version*
  - [x] Heatsink for RPi4 : [amazon link](https://www.amazon.com/-/de/dp/B07W664LNN/)
  - [x] HDMI to micro HDMI adapter [amazon link](https://www.amazon.com/-/de/dp/B07RZX9MCS/) 
  - [x] 20cm Jumper cable (you will only nee a couple of male -> female) [amazon link](https://www.amazon.com/-/de/dp/B07GD2BWPY/ref=sr_1_4?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=jumper+cable+male+female&qid=1626862430&sr=8-4) 
  - [x] Cooling Super Silent Fan 7 [amazon link](https://www.amazon.com/-/de/dp/B01HTNV1GW/ref=sr_1_4?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=AAB+Cooling+Super+Silent+Fan+7&qid=1626862591&sr=8-4) 
  - [x] Bumper Pads 10mm-12mm wide and 2mm-4mm high or similar I.e. [amazon link](https://www.amazon.com/-/de/dp/B01N922DLO/ref=sr_1_3?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=Bumper+Pads&qid=1626862817&sr=8-3)
  - [x] Fan Filters [amazon link](https://www.amazon.com/-/de/dp/B01N6BFVKO/ref=sr_1_9?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=15W7A2VYE9MDQ&dchild=1&keywords=pc+fan+grill&qid=1626862993&sprefix=pc+fan+g%2Caps%2C314&sr=8-9)
  - [x] Depending on your monitor input, you will need a HDMI cable or a HDMI -> (DFI, VGA...) adapter
  - [x] Network cable to your router (you can use Wi-Fi if you have a good 5Ghz connection). Ethernet is recommended 


* Bonus:
  - [x] LED Ring [amazon link](https://www.amazon.com/-/de/dp/B08XQLVDMT/ref=sr_1_1?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=led+ring+12+bit&qid=1626862358&sr=8-1)

### B. Tools needed:
  - [x] Cutter to clean the 3D Prints
  - [x] Scissors to cut the Fan Filters
  - [x] Big screw driver or a 5ct coin to open the case gain if needed
  - [x] Bonus: Soldering iron only for LED Ring (everything can run without the LED Ring)

# ✨ LFG!

# 1. Basic Raspberry Pi setup

## OS installation

![2021-07-06 12_33_26-Raspberry Pi OS – Raspberry Pi](https://user-images.githubusercontent.com/84664789/124586324-98614f80-de56-11eb-8e28-8fb67b16dff0.png)

* Go to [official Raspberry Pi OS](https://www.raspberrypi.org/software/)
* Download Raspberry Pi Imager for your specific OS (Windows, Mac, Linux)
* Insert your Samsung FIT Plus Flash Drive into your PC/Mac
* Select Raspberry Pi OS 32Bit
* Select Samsung FIT Plus Flash Drive
* Click "Write" and follow the instructions

![2021-07-06 12_43_15-Raspberry Pi OS – Raspberry Pi](https://user-images.githubusercontent.com/84664789/124587523-fe9aa200-de57-11eb-8859-2695a0922446.png)

## Add coolers (follow the instructions in package).

![20210708_115943_2](https://user-images.githubusercontent.com/84664789/126476277-9e40836f-7a40-4e93-bf7b-74c70e737a2a.jpg)

## Connections (Stick, PSU, Mouse, Keyboard, HDMI, Nework)

* Assemble the heatsinks on the Raspberry (follow the instructions in package).
* Connect the Ethernet cable to you Raspberry Pi and router (check your DHCP router config if needed)
* Connect the micro HDMI adapter + cable to your monitor input
* Connect mouse and keyboard to the Raspberry Pi USB ports
* Connect Samsung FIT Plus Flash Drive to a USB 3.0 (blue) port on your Raspberry Pi

Now your basic DeFiNode should look like this:

![20210708_120318](https://user-images.githubusercontent.com/84664789/126476652-8e05e926-9707-4315-8eb0-d4c9d3b17451.jpg)

## First boot with monitor + mouse + keyboard

* Plug it in 
* Use the switch to switch on the Raspberry Pi (LEDs should light up)

Welcome to Raspberry Pi OS! 
You should see this screen on your monitor.

![newraspberry](https://user-images.githubusercontent.com/84664789/124910238-a8f6fe80-dfeb-11eb-9aee-025041958be8.png)

Follow the screen and setup your language, Wi-Fi (it is recommended to use a Ethernet connection for stability) an password. It is important you write this password down. It will be needed later on.

![password](https://user-images.githubusercontent.com/84664789/124910776-3fc3bb00-dfec-11eb-9eb1-a4d61138c703.png)

## VNC activation (to be able to remote control your Definode without the monitor, mouse and keyboard)

![VNC Activation](https://user-images.githubusercontent.com/84664789/126477686-1fc510ff-3113-4e0b-b360-1e9eed227dc2.png)

For reference check the instructions on VNC tool: [VNC](https://www.realvnc.com/de/connect/download/viewer/)

Write down your the local IP Address by moving the mouse cursor on the connection icon in the top right corner (we might need it later on)

![grafik](https://user-images.githubusercontent.com/84664789/124912506-52d78a80-dfee-11eb-84d5-1c718df7db9e.png)

### Edit /boot/config.txt for VNC only usage (mandatory if you want to use the Definode without a monitor)

* Open the file manager
* Navigate to /boot/ folder
* Double click on config.txt

![VNC Viewer config](https://user-images.githubusercontent.com/84664789/126489342-4377229e-7386-41db-a5da-efd739b1f567.png)

* Look for the entry: "#hdmi_force_hotplug=1"
* Delete the #
* Save the file

![VNC Viewer config_2](https://user-images.githubusercontent.com/84664789/126489497-8e9c967b-ce60-40fe-af33-69c8a9451559.png)

* Reboot Definode

![Reboot](https://user-images.githubusercontent.com/84664789/126489674-8714f351-3442-4b5f-bc56-025ee122b2b7.png)


##	(Optional) Edit resolution with “sudo raspberry-config”

* Open terminal
* Enter ```sudo raspberry-config```
* Select Display
* Select resolution
* Select the preferred resolution
* Exit with OK
* Reboot

![resolution](https://user-images.githubusercontent.com/84664789/126490831-11a38532-d2ad-479c-9570-d302bc477cb0.png)


##	(Optional) Change hostname to “definode” with “sudo raspberry-config”

Standard hostname is  ```raspberrypi```. You can change the name to ```definode``` to be able to enter the wallet in your browser with ```http:\\definode:5000``` instead with ```http:\\raspberrypi:5000```

* Open terminal
* Enter ```sudo raspberry-config```
* Select System options
* Select Hostname
* Change it to ```definode``
* Exit with OK
* Reboot

![Hostname](https://user-images.githubusercontent.com/84664789/126491922-87e6d0e7-e215-488d-9162-7b54273c75bd.png)


## Remote control VNCViewer

* Download and install VNCViewer tool on your PC/Mac: [VNCViewer](https://www.realvnc.com/de/connect/download/viewer/)
* DefiNode should be powered on and running
* Open VNCViewer

![vncviewer_1](https://user-images.githubusercontent.com/84664789/126617116-ea0e98c9-e632-419e-b721-6155dde37888.png)

* Click "New connection"
* Enter the hostname of your DefiNode in "VNC Server". If you changed it to ````definode````, please use this. ````raspberrypi```` is the standard hostname. You can also enter the local IP address, you've written down, as mentioned above.
* Klick OK 
* Double click the new connection

![vncviewer_2](https://user-images.githubusercontent.com/84664789/126618004-b3dd584d-e998-4a02-b4e6-8c30f99a7681.png)

* enter ````pi```` as username
* enter the password you gave the DefiNode at the first boot
* press OK and you should see the DefiNode desktop

Now you can connect to it any time from any device and mage it conveniently.

🎉 Congratulations! You've done a very good Job so far! 🎉

🎉 You can now disconnect the external Monitor, mouse and keyboard and proceed work with the Remote Desktop 🎉

## Download script and execution

* Open a new terminal Terminal

![grafik](https://user-images.githubusercontent.com/84664789/124911359-f0ca5580-dfec-11eb-86e1-51fa5253c58b.png)

* Enter: this command and press ENTER
```
git clone http://github.com/definode/definode && cd definode && sudo sh definode.sh
```

🎇 #Watch the magic happening (for ~3h) 🎇

I know its long but this is really necessary to ensure you build the official software from DeFiChain on your DeFiNode.

* Steps done in the background:
  * Downloading and installing the official DeFiChain software. Nothing is changed and 100% original source code is downloaded
  * Downloading the latest blockchain snapshot (no 100% sync needed after installation)
  * Start DeFiChain and wallet

There may be some orange messages appear in the terminal, but this is nothing to worry about.

## First Wallet usage and test

When everything is finished and running you will get the message "Please open your browser http://localhost:5000" in the terminal

* Open the chromium browser on your DeFiNode and enter http://localhost:5000 -> press enter

* You can also use your PC/Mac/Mobile phone browser (when in same LAN) and enter the IP Address (or hostname) + Port to remote control the Node from other devices. I.e. ```192.168.0.236:5000``` or ```http:\\definode:5000``` -> press enter. You can bookmark this in your browser.

For advanced use, like backup / restore wallet, masternodes, blockchain explorer... plese check the FAQ and trouble shooting guide below.

🎉 Congratulations! You've successfully installed the Defichain software on your DeFiNode 🎉

![wallet](https://user-images.githubusercontent.com/84664789/126619910-2e0fd58b-cc7d-496a-a60f-ebd0173b48a9.png)


<!--
**DefiNode/DeFiNode** is a ✨ _special_ ✨ repository because it’s `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
