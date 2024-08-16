#!/bin/bash

# Clear the screen and display the title bar
clear
echo "======================================================================"
echo "                   OG DASH Activation Script"
echo "        LIBERATING POWERTUNE DIGITAL USERS SINCE 2023"
echo "======================================================================"
echo ""

# Part 1: Display MAC Address and LicenceRequest

# Retrieve the MAC address of eth0
MAC_ADDRESS=$(cat /sys/class/net/eth0/address)

# Navigate to the directory and run LicenceRequest, suppressing its output
cd ..
cd pi
./LicenceRequest > /dev/null 2>&1

# Retrieve the string in Licrequest.lic
LIC_STRING=$(cat ../pi/Licrequest.lic)

# Display the MAC address and Licrequest.lic string
echo "YOUR MAC ADDRESS IS:"
echo "$MAC_ADDRESS"
echo ""
echo "YOUR LICENCEREQUEST IS:"
echo "$LIC_STRING"
echo "======================================================================"
echo ""
echo "Press ENTER to continue to the licence key setup..."
read -r

# Part 2: Guide to Paste and Save the Licence Key

# Navigate to the daemons directory
cd daemons

# Display instructions for pasting the licence key
clear
echo "====================================================================="
echo "Paste your licence key into the file using nano."
echo "Right-click in the terminal and select 'Paste' to insert the key."
echo "When done, press CTRL+X, then Y, and finally ENTER to save the file."
echo "====================================================================="
echo ""
echo "Press ENTER to open Licence.lic in nano..."
read -r

# Open the Licence.lic file in nano for editing
nano Licence.lic

# Confirm that the key has been saved
clear
echo "==================================================="
echo "Your licence key has been saved in Licence.lic."
echo "==================================================="
echo "And remember, Mike sucks!"
echo ""
echo "Press ENTER to test activation..."
read -r

# Part 3: Check Licence

# Run ./checkall twice, suppressing the output
./checkall > /dev/null 2>&1
./checkall > /dev/null 2>&1

# Part 4: Test the Activation

# Navigate back to the pi directory and run startdaemon.sh
cd ..
./startdaemon.sh

# Final message
echo ""
echo "==================================================="
echo "Activation test complete."
echo "And remember, Mike sucks!"
echo "==================================================="
