#!/bin/bash

#  install.sh
#  MicFix
#
#  Created by WingLim on 2021/5/15.
#  

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Clean up old installs
function uninstall_MicFix() {
    echo "Removing old installs"
    sudo launchctl unload /Library/LaunchAgents/com.WingLim.MicFix.plist
    sudo rm -rf /Library/LaunchAgents/com.WingLim.MicFix.plist
    echo "Reomve successful!"
}

# Function that exits with an error code and message
function abort() {
    echo "$1"
    exit 1
}

function install_MicFix() {
    uninstall_MicFix 2>/dev/null

    echo "Copying new files"
    sudo cp "$DIR/MicFix" /usr/local/bin/MicFix || abort "Failed to copy MicFix"
    sudo cp "$DIR/com.WingLim.MicFix.plist" /Library/LaunchAgents || abort "Failed to copy launchd plist file"

    echo "Setting permissions"
    sudo chmod 755 /usr/local/bin/MicFix
    sudo chmod 644 /Library/LaunchAgents/com.WingLim.MicFix.plist

    sudo chown root:wheel /usr/local/bin/MicFix
    sudo chown root:wheel /Library/LaunchAgents/com.WingLim.MicFix.plist

    echo "Loading launch daemon"
    sudo launchctl load /Library/LaunchAgents/com.WingLim.MicFix.plist
    
    echo "Install successful!"
}


action=$1
[ -z "$1" ] && action=install
case "$action" in
    install|uninstall)
        ${action}_MicFix
        ;;
    *)
        echo "Wrong arguments [${action}]"
        echo "Usage: $(basename "$0") [install|uninstall]"
        ;;
esac
