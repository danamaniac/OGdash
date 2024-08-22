#!/bin/bash

# Set the CAN interface name (change if necessary)
CAN_INTERFACE="can0"

# Set the loopback mode (on or off)
LOOPBACK_MODE="on"

# Create a script in /etc/network/if-up.d/ to set loopback mode
SCRIPT_FILE="/etc/network/if-up.d/set-can-loopback"

# Ensure the /etc/network/if-up.d/ directory exists
mkdir -p /etc/network/if-up.d/

# Write the loopback setting script
echo "#!/bin/sh
/sbin/ip link set $CAN_INTERFACE type can loopback $LOOPBACK_MODE
" > $SCRIPT_FILE

# Make the script executable
chmod +x $SCRIPT_FILE

echo "Loopback setting for $CAN_INTERFACE has been set to $LOOPBACK_MODE and made persistent."

