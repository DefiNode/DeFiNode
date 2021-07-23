### DEVELOPMENT ONGOING...🔭

  # ✨ DeFiNode for more decentralization ✨

![Title](https://user-images.githubusercontent.com/84664789/126639893-752b7687-eae5-424a-b35c-df782da80133.png)


**The DeFiNode is a do-it-yourself DeFiChain full node DeFiChain original source code. No code will be altered during installation and will 100% taken from the DeFiChain repository.**

## Basic Features

* **Easy installation** (Easy mode and Expert mode)
* **All functionalities of the official full node GUI wallet app**
* **Can run a Master node**
* **Controlled by web browser** (From your PC or smartphone)
* **100% open source**

## Table of Contents 🔭

**[A. Shopping list (also German)](https://github.com/DefiNode/DeFiNode/blob/main/README.md#a-basic-amazon-shopping-list-with-the-dedicated-definode-case-there-will-be-a-separate-shopping-list)**

**[B. Tools needed](https://github.com/DefiNode/DeFiNode/blob/main/README.md#b-tools-needed)**

**[1. Basic Raspberry Pi setup](https://github.com/DefiNode/DeFiNode/blob/main/README.md#1-basic-raspberry-pi-setup)**
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
  
**[2.	3D Printing](https://github.com/DefiNode/DeFiNode/blob/main/README.md#23d-printing)** 
  - **Download files**
  - **Slice files (Tips with Raft)**
  - **Print and Material (PLA)**
  - **Clean up and Test print**
  
**[3.	Custom Case assembly](https://github.com/DefiNode/DeFiNode/blob/main/README.md#3custom-case-assembly)**
  - **Put Raspberry into case**
  - **Cut grids and insert**
  - **Connect PSU**
  - **Assembly the bottom**
  - **Connect and assembly Fan**
  - **Final Assembly (Stick and Network cable)**
  - **Power on and Wallet usage**
  
**[4.	Bonus (only for advanced users with soldering iron) not essential for operation, but very cool](https://github.com/DefiNode/DeFiNode/blob/main/README.md#4bonus-only-for-advanced-users-with-soldering-iron-not-essential-for-operation-but-very-cool)**
  - **Solder LED ring**
  - **Assembly LED ring**
  - **Connect LED ring (right after step 4.c)**
  - **Install LED script and auto start it**
  - **LED (rainbow) test and usage (in development)**

**[5.	FAQ and Trouble shooting guide](https://github.com/DefiNode/DeFiNode/blob/main/README.md#5faq-and-trouble-shooting-guide)**

### DEVELOPMENT ONGOING...🔭



(IMAGES)

### A. Basic Amazon Shopping List 

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
  - [x] 12 x LED Ring [amazon link](https://www.amazon.com/-/de/dp/B08XQLVDMT/ref=sr_1_1?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=led+ring+12+bit&qid=1626862358&sr=8-1)

### :de: A. German Basic Amazon Shopping List :sweat_smile: :de:

  - [x] Raspberry 4 4GB (or 8GB) [amazon link](https://www.amazon.de/Raspberry-Pi-ARM-Cortex-A72-Bluetooth-Micro-HDMI/dp/B07TC2BK1X)
  - [x] Power Supply EU - USB-C, 5V, >=3A [amazon link](https://www.amazon.de/Jun_Electronic-Ladegerät-Netzteil-Schalter-Raspberry/dp/B07TYYV8GF/)
  - [x] 256GB - Samsung FIT Plus Flash Drive [amazon link](https://www.amazon.de/Samsung-256GB-Flash-MUF-256AB-APC/dp/B07HPX38XC/ref=sr_1_4?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=256GB+-+Samsung+FIT+Plus+Flash+Drive&qid=1627047590&s=ce-de&sr=1-4) *min. 128GB version*
  - [x] Heatsink for RPi4 : [amazon link](https://www.amazon.de/ITSTUFF-Aluminium-K%C3%BChlk%C3%B6rper-schwarz-Raspberry/dp/B07VH683L9/ref=sr_1_56?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=heatsink+for+rpi+4&qid=1627047642&s=ce-de&sr=1-56)
  - [x] HDMI to micro HDMI adapter [amazon link](https://www.amazon.de/Techrum-Adapterkabel-Micro-HDMI-auf-HDMI-Micro-HDMI-Stecker-Normal-HDMI-Verl%C3%A4ngerungskabel-1-St%C3%BCck/dp/B07VXPD83L/ref=sr_1_5?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=HDMI+to+micro+HDMI+adapter&qid=1627047663&s=ce-de&sr=1-5) 
  - [x] 20cm Jumper cable (you will only nee a couple of male -> female) [amazon link](https://www.amazon.de/AZDelivery-Jumper-Arduino-Raspberry-Breadboard/dp/B07K8PVKBP/ref=sr_1_5?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=Jumper+cable+male+female&qid=1627047691&s=ce-de&sr=1-5) 
  - [x] Cooling Super Silent Fan 7 [amazon link](https://www.amazon.de/AAB-Cooling-Super-Silent-Anti-Vibration-Pads/dp/B01HTNV1GW/ref=sr_1_3?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=Cooling+Super+Silent+Fan+7&qid=1627047720&s=ce-de&sr=1-3) 
  - [x] Bumper Pads 10mm-12mm wide and 2mm-4mm high or similar I.e. [amazon link](https://www.amazon.de/Antirutsch-Zellkautschuk-selbstklebend-Rutschhemmende-inTop-Qualit%C3%A4t/dp/B06Y6HZQVQ/ref=sr_1_4?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=Antirutsch+Pads+12mm&qid=1627047758&s=diy&sr=1-4)
  - [x] Fan Filters [amazon link](https://www.amazon.de/gp/product/B01DIYRK52/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
  - [x] Depending on your monitor input, you will need a HDMI cable or a HDMI -> (DFI, VGA...) adapter
  - [x] Network cable to your router (you can use Wi-Fi if you have a good 5Ghz connection). Ethernet is recommended 


* Bonus:
  - [x] 12 x LED Ring [amazon link](https://www.amazon.de/gp/product/B07SPL2YC1/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&th=1)

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

For advanced use, like backup / restore wallet, master nodes, blockchain explorer... please check the FAQ and troubleshooting guide below.

🎉 Congratulations! You've successfully installed the Defichain software on your DeFiNode 🎉

![wallet](https://user-images.githubusercontent.com/84664789/126619910-2e0fd58b-cc7d-496a-a60f-ebd0173b48a9.png)

# 2.	3D Printing

All files can be found in the 3D files folder. Every part was specifically designed for 3D printing and can be easily printed with every FMD printer. 

My preferred material and settings:

* PLA
* 0.4mm nozzle
* Temps depending on the brand you are using

## Slice files

Use your favorite slicing tool.

![2](https://user-images.githubusercontent.com/84664789/126631883-0e6fb333-b75c-48d8-912c-ea44768fce0e.png)

I recommend using raft for:

* The top part
* The mid part

Rest of the parts can be printed directly on the plate.

![1](https://user-images.githubusercontent.com/84664789/126632047-1bc378fc-483a-4476-b089-2591fbc65a93.png)

Use higher quality settings to have the best looking DefiNode.

Add support where the slicer recommends

After the print, clean everything very good and remove the support.

![20210713_104737_cr](https://user-images.githubusercontent.com/84664789/126632310-9e531a07-1a86-43e2-94cf-b3cc5d04ddb6.jpg)

# 3.	Custom Case assembly

If you successfully finished step 1 and the wallet was running in the Raspberry you can now start assembling the DefiNode. Please clan the 3D print as good as you can. You can use a cutter knife to remove support or other unnecessary remaining.

Shutdown via VNC (not just power off) your Raspberrypi. Remove all connections and USD stick.

![20210721_134459_s](https://user-images.githubusercontent.com/84664789/126760225-33212e65-e013-46ec-a42e-f0ccd4018d37.jpg)


## Put Raspberry into case

* Use a soft material table pad on the table if possible.
* Slice in the Raspberry connectors first
* Press the back side very gently in to the hocks. 

![20210713_104209_s](https://user-images.githubusercontent.com/84664789/126760460-bbc4f32d-9929-4ed7-ac56-3e3cd0bbd157.jpg)
![20210713_104232s](https://user-images.githubusercontent.com/84664789/126760549-bfc9b479-b252-4790-8010-e2a23e6bfbc1.jpg)
![20210713_104250s](https://user-images.githubusercontent.com/84664789/126760587-a79fbb19-6af6-4f60-b95e-9d9aff811dfc.jpg)

That’s it, no screws, nothing. Easy, isn't it!

## Cut grids and insert

Prepare scissors, cutting template and the flexible fan grids you've purchased from Amazon.

* Use the template to cut two fitting grids
* If it will not fit right away, you can trim them later on

![20210715_112739s](https://user-images.githubusercontent.com/84664789/126761400-a1a27178-1729-46cd-a0e4-aae745f8bc10.jpg)
![20210715_112840s](https://user-images.githubusercontent.com/84664789/126761463-4b6ebf66-7b83-4648-990b-75b23ef9c2dc.jpg)
![20210715_112918s](https://user-images.githubusercontent.com/84664789/126761490-8379ae4a-364e-4768-b9c2-8c436bb8eb5d.jpg)

* Make sure the slots are clear very clear, so you can easily insert the grid.

![20210721_134556s](https://user-images.githubusercontent.com/84664789/126761918-27305a96-072b-4963-870c-14a253498c1a.jpg)

* Check the orientation and slide in the grid. This should go very smooth.

![20210721_134424_cr](https://user-images.githubusercontent.com/84664789/126761554-d9de35de-2d4c-4438-b9c3-c28194c6b5b4.jpg)

## Connect PSU

* Slide the cable in like in the picture below
* Connect the USB-C connector to the raspberrypi

![20210713_112026s](https://user-images.githubusercontent.com/84664789/126762253-8522d896-2cb1-4b30-a19f-78d21d6e2acf.jpg)

* Flip the case und put the power cable into the strain relive and hole at the back. 
* Make sure the power switch is outside the case

![20210721_134335s](https://user-images.githubusercontent.com/84664789/126762311-394e1a0b-a148-40c0-ad81-6ab1f52b1180.jpg)

## Assembly of the bottom 

* Here you can add a SSD if you want too.
* Make sure the bottom is oriented like in the picture. I will not fit otherwise!

![20210721_134315s](https://user-images.githubusercontent.com/84664789/126762712-38ad640a-3fbc-4647-9dd0-6cdc70e0ab96.jpg)

* Put the mid part on top
* Make sure the locking mechanism aligns 100%
* Slightly press down the mid 
* It should slide and lock pretty smoothly. When not, check for 3D printing remaining and remove them.
* Always make sure the cables align

![20210721_134324s](https://user-images.githubusercontent.com/84664789/126762769-aa28785f-601d-482b-bec7-1e620cccbca1.jpg)

## Connect and assembly Fan

* Prepare the fan and two jumper cables (male -> female)

![20210715_113014s](https://user-images.githubusercontent.com/84664789/126792316-ddeacebd-5c65-4a3d-a00b-bee77a967a70.jpg)

* Connect both to the Black and Red wires on the Fan connector (yellow is not needed). I dosn't matter what colors the jumper cables have.

![20210721_134213s](https://user-images.githubusercontent.com/84664789/126792413-6addb671-2ec6-4af5-8fbe-af00c7022531.jpg)

* Connect the jumper cables according to the picture
  * Red cable goes to Pin 2 on the Raspberry
  * Black cable goes to Pin 6 on the Raspberry  
  
![fans](https://user-images.githubusercontent.com/84664789/126794113-0c14e773-6b0b-4584-a028-f2b0b89dab08.png)

* I should look like this (don't pay attention to the green, yellow and orange jumper. Those are for the LED ring and will be described later)

![20210721_134141s](https://user-images.githubusercontent.com/84664789/126792493-c07c7780-0b8d-4108-b5b4-b72200e83942.jpg)

You can switch on the Raspberry without the USD Stick to test if the fan is running.

## If you want to add the LED Ring jump to chapter 4 and come back here, when this is finished.

* Insert Fan exactly like in the picture. You can bend the jumper cable so the fan will not hit the when rotating.

![20210721_134103_cr](https://user-images.githubusercontent.com/84664789/126795860-f65508da-3bd1-439c-9e62-06fa375f4ea1.jpg)

* Organize the cables and insert the air guide like in the image below. Make sure the air guide is flat on the fan and has a good fit. If not, check if the cables are proper organized.

![20210721_134045s](https://user-images.githubusercontent.com/84664789/126795931-dfaddadc-ba41-4494-955e-86f8785267df.jpg)

* Check again if the fan is working by powering on the Raspberry without the USB Stick.

* You cannot close the DefiNode by mounting the top. Make sure it aligns and press is slightly down.
* If you have to open it again, you can use a big screwdriver or a 5ct coin or similar.

![20210721_134000](https://user-images.githubusercontent.com/84664789/126796002-92e7617e-817f-45e1-84be-6a745778aae5.jpg)


## Final Assembly (USB Stick and Network cable)

* Connect the LAN cable
* Insert the USB Stick

![20210713_112134s](https://user-images.githubusercontent.com/84664789/126796774-0002522c-0017-4113-b4f4-1e01294799cc.jpg)


## Power on 

* You can now power on the DeFiNode and process with using the wallet a described in chapter 1.

# 4.	Bonus (only for advanced users with soldering iron) not essential for operation, but very cool.

If you want to make your DeFiNode even cooler, you can add a RGB LED Ring to it. The Ring can be programmed to show any animation you want. For now a pink circle indicates the DefiNode is running.

![Untitled Project](https://user-images.githubusercontent.com/84664789/126632916-2d9d7f80-74e2-44e1-8e96-abccb655a571.gif)

As in the shopping list, you need to get one RGB LED ring and 3 jumper (female -> male) cables (you should have them already)

[x] LED Ring [amazon link](https://www.amazon.com/-/de/dp/B08XQLVDMT/ref=sr_1_1?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=led+ring+12+bit&qid=1626862358&sr=8-1)

What you need:

![20210715_113106](https://user-images.githubusercontent.com/84664789/126633533-45e118db-e67c-4b3b-ab5d-5df372578503.jpg)

## Soldering

Solder the male side of the jumper cable only to:

* DI pad
* 5V pad
* GND pad

DO pad is not needed here. Color of the jumper cable is not important. As long as you do the Raspberrypi connection properly.

![2021-07-22 13_39_04-](https://user-images.githubusercontent.com/84664789/126633956-c06d6955-0da0-46b6-ba04-155911b4dd9f.png)

Now it should look like this

![20210722_134437](https://user-images.githubusercontent.com/84664789/126634402-c8eba467-d78a-4cfa-b10d-e1c56828aa6d.jpg)

## Assembly LED ring

* Mount the ring as in the image below. Don’t use too much pressure, you may break off the hock.

![20210716_140024s](https://user-images.githubusercontent.com/84664789/126798181-c5ca83c1-91ac-42b5-9d28-aff6f700e946.jpg)
![20210716_140120s](https://user-images.githubusercontent.com/84664789/126798246-51ce7aeb-c3e6-4d30-9d1f-2868ff9ea07f.jpg)

## Connect LED ring (right after step 3.c)

![2021-07-23 16_02_33-s](https://user-images.githubusercontent.com/84664789/126797702-885ac7f7-f890-454f-b978-a4b93c653bf2.png)

## 	Install LED script and auto start it
(TBD) but check the txt on GitHub
## 	LED (rainbow) test and usage (in development)
(TBD) but check the txt on GitHub

# 5.	FAQ and Trouble shooting guide

## a.  How to import wallet.dat?
Put your wallet.dat in your definode/defichain folder. Make sure you habe a backup of your wallet.dat
## b.  How to backup wallet.dat?
Go to your definode/defichain folder and copy your wallet.dat on an USB device
or go to your definode folder and run the this script:
sudo -E sh 09_backup_defiwallet.sh
Your backup is still on your Raspberry Pi. Make sure you store it somewhere else.
## c.  Installation aborted. What to do?
Try it again :-)
## d.  How to use the expert scripts / menu?
On your desktop you will find the "DeFiNode Main Menu"
or open via console
sudo -E sh 00_definode.sh
## e.  Red text during installation?
Keep calm and relax. Your DeFiNode i almost ready.
## f.  Blockchain tab not working?
We are working on that. Just use https://explorer.defichain.io/ or  https://chainz.cryptoid.info/dfi/
## g.  Hot to setup a Master node?
defi-cli is your friend
For more informations type in your console
docker exec defi_node defi-cli help createmasternode 
and follow the instructions on:
https://defichain-wiki.com/wiki/Masternode_installation_extended
## h.  Wallet not syncing?
Go to your expert scripts (see 5d) and use option "8 Repair DeFiNode"
## i.  VNC Viewer not connecting?
Check your IP Address
## j.  VNC Viewer black screen?
## k.  Fan not working?
## l.  LED ring not working?
## m.  Not booting?
Check USB device or SD Card.
Check Power Supply

*DISCLAIMER*

*The information provided by DefiNode GitHub, Twitter, Reddit and Telegram is for general informational purposes only. All information on the sites and channels is provided in good faith, however we make no representation or warranty of any kind, express or implied, regarding the accuracy, adequacy, validity, reliability, availability or completeness of any information on the Site or our channels.*

*UNDER NO CIRCUMSTANCE SHALL WE HAVE ANY LIABILITY TO YOU FOR ANY LOSS OR DAMAGE OF ANY KIND INCURRED AS A RESULT OF THE USE OF THIS SITE, CHANNELS, SCRIPTS AND TUTORIALS. YOUR USE OF THE SITE, SCRIPTS AND TUTORIALS AND YOUR RELIANCE ON ANY INFORMATION ON THIS SITE AND CHANNELS IS SOLELY AT YOUR OWN RISK.*

*Last updated July 23, 2021*


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
