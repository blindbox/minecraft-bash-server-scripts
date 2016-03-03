#!/bin/bash

# Add the following line in /etc/rc.local, (or sudo crontab -e)
# su - yourUserName -c "/pathToScript/start-server-in-screen.sh"

## SV means server
SV_PATH="/home/morning/FTBInfinityServer2.4.1"

#used by ATLauncher servers
#SV_STARTSCRIPT="LaunchServer.sh"

#used by FTB servers
SV_STARTSCRIPT="ServerStart.sh"
screen -X -S minecraft quit 
screen -dmS minecraft bash 
sleep 5 
screen -SX minecraft stuff "cd $SV_PATH;
./$SV_STARTSCRIPT
"