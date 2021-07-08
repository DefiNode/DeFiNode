### DEVELOPMENT ONGOING...

### ✨ DeFiNode for more decentralization ✨

<!-- ![2021-06-17 14_22_36-Raspberry_Pi_Server_Box - FUSION TEAM_cr](https://user-images.githubusercontent.com/84664789/124581373-584b9e00-de51-11eb-92b3-3103a6513776.png)-->

*Build your own DeFiNode on a Raspberry 4B*

*Installation guide for the DeFiChain on a Raspberry 4B 4GB-8GB RAM .*

**The DeFiNode is a do-it-yourself DeFiChain full node DeFiChain original source code. No code will be altered during installation and will 100% taken from the DeFiChain repository.**

## Basic Features (with the dedicated DeFiNode Case, there will be more features introduced)

* **Easy installation** (Easy mode and Expert mode)
* **All functionalities of the official full node GUI wallet app**
* **Can run a Master node***
* **Controlled by web browser** (From your PC or smartphone)
* **100% open source**

## Hardware Needed
Estimated cost around 80-120 USD - based on shops and location.

(IMAGES)

### Basic Amazon Shopping List (with the dedicated DeFiNode Case, there will be a separate shopping list)
*Please try to use the exact hardware models that are recommended in the shopping lists. A monitor and mouse keybord are needed for the initial setup*

* Raspberry 4 4GB (or 8GB) [amazon link](https://www.amazon.com/-/de/dp/B07TC2BK1X)
* Power Supply US - USB-C, 5V, >=3A [amazon link](https://www.amazon.com/-/de/dp/B07TSDJSQH)
* Power Supply EU - USB-C, 5V, >=3A [amazon link](https://www.amazon.de/Jun_Electronic-Ladegerät-Netzteil-Schalter-Raspberry/dp/B07TYYV8GF/)
* 256GB - Samsung FIT Plus Flash Drive [amazon link](https://www.amazon.com/-/de/dp/B07D7Q41PM/) *min. 128GB version*
* Heatsink Case for RPi4 : [amazon link](https://www.amazon.com/-/de/dp/B07W664LNN/)
* HDMI to micro HDMI adapter [amazon link](https://www.amazon.com/-/de/dp/B07RZX9MCS/) 
* Depending on your monitor input, you will need a HDMI cable or a HDMI -> (DFI, VGA...) adapter
* Network cable to your router (you can use Wi-Fi if you have a good 5Ghz connection). Ethernet is recommended 


## Assemble your basic DeFiNode
When you have all parts you need to:

* Assemble the heatsinks on the Raspberry (follow the instructions in package).
* Connect the Ethernet cable to you Raspberry Pi and router (check your DHCP router config if needed)
* Connect the micro HDMI adapter + cable to your monitor input
* Connect mouse and keyboard to the Raspberry Pi USB ports
* **Do not switch it on yet** (We need to prepare the Samsung FIT Plus Flash Drive on your PC/MAC first)

Now your basic DeFiNode should look like this:

![20210708_120318](https://user-images.githubusercontent.com/84664789/124910008-62a19f80-dfeb-11eb-8da7-115084dfdc88.jpg)

## Downloading the official Raspberry Pi OS and preparation of the Samsung FIT Plus Flash Drive

![2021-07-06 12_33_26-Raspberry Pi OS – Raspberry Pi](https://user-images.githubusercontent.com/84664789/124586324-98614f80-de56-11eb-8e28-8fb67b16dff0.png)

* Go to [official Raspberry Pi OS](https://www.raspberrypi.org/software/)
* Download Raspberry Pi Imager for your specific OS (Windows, MAC, Linux)
* Install Pi Imager and start it

![2021-07-06 12_43_15-Raspberry Pi OS – Raspberry Pi](https://user-images.githubusercontent.com/84664789/124587523-fe9aa200-de57-11eb-8859-2695a0922446.png)

* Insert the Samsung FIT Plus Flash Drive into your PC/Mac
* Select Raspberry Pi OS 32Bit
* Select Samsung FIT Plus Flash Drive
* Click "Write" and follow the instructions

## Boot your DeFiNode

* Insert the Samsung FIT Plus Flash Drive into the Raspberry Pi (blue connector)
* Use the switch to switch on the Raspberry Pi (LEDs should light up)


Welcome to Raspberry Pi OS! 
You should see this screen on your monitor.

![newraspberry](https://user-images.githubusercontent.com/84664789/124910238-a8f6fe80-dfeb-11eb-9aee-025041958be8.png)

Follow the screen and setup your language, Wi-Fi (it is recommended to use a Ethernet connection for stability) an password. It is important you write this password down. It will be needed later on.

![password](https://user-images.githubusercontent.com/84664789/124910776-3fc3bb00-dfec-11eb-9eb1-a4d61138c703.png)

## Install remote Desktop to control your DeFiNode from your PC / Mac. (Not mandatory but very convenient)

The next two steps are not mandatory and you can do the initial installation with the monitor, mouse and keyboard. But it is very convenient to use remote Desktop to work with the DeFiNode and apply future updates.

* Open the Terminal by clicking on it

![grafik](https://user-images.githubusercontent.com/84664789/124911359-f0ca5580-dfec-11eb-86e1-51fa5253c58b.png)

* Enter: this command and press ENTER
```
sudo apt-get install xrdp
```
![grafik](https://user-images.githubusercontent.com/84664789/124911777-7221e800-dfed-11eb-9d20-470347472e2e.png)
![grafik](https://user-images.githubusercontent.com/84664789/124912264-0724e100-dfee-11eb-8286-6b9b34bd1eef.png)

* Write down your the local IP Address by moving the mouse cursor on the connection icon in the top right corner

![grafik](https://user-images.githubusercontent.com/84664789/124912506-52d78a80-dfee-11eb-84d5-1c718df7db9e.png)

You can fix this address in your individual router setting so it will not change. Typically you don’t have to do it.

## Connect to your DeFiNode from your PC / Mac (Not mandatory but very convenient)

On a Windows PC, look for "Remote Desktop Connection". 

* Mac app: microsoft-remote-desktop
* Linux app: rdesktop

Windows Example (others should be similar):

* Open Remote Desktop Connection (press windows + q -> enter "remote").
![2021-07-08 12_25_19-Remotedesktopverbindung](https://user-images.githubusercontent.com/84664789/124913511-7d761300-dfef-11eb-8e59-e18ab5d9d797.png)
* Enter the DeFiNode IP address you've written down -> press enter
![2021-07-08 12_26_20-192 168 0 236 - Remotedesktopverbindung](https://user-images.githubusercontent.com/84664789/124913610-9f6f9580-dfef-11eb-912c-6840429e3e2e.png)
* Enter "pi" as username and your DeFiNode password you've written down -> press OK
* You should now see the DefiNode desktop on your PC / Mac
![2021-07-08 12_26_52-192 168 0 236 - Remotedesktopverbindung](https://user-images.githubusercontent.com/84664789/124913765-d04fca80-dfef-11eb-92b6-4a1d73fdaaa9.png)

🎉 Congratulations! You've done a very good Job so far! 🎉
🎉 You can now diconnect the external Monitor, mouse and keyboard and proceed work with the Remote Desktop 🎉

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
