#!/bin/bash
# sudo su -
sudo rm -rf /Applications/Sophos*
sudo rm -rf /Library/Sophos*
sudo rm -rf /Library/Application\ Support/Sophos*

ps aux | grep -i sophos | awk '{print $2}' | sudo xargs kill -9; sudo find / -iname '*sophos*' -exec rm -rf {} \;