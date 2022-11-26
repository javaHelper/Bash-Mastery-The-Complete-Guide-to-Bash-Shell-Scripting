
# Author: Prateel
# Created: 17th Nov 2022
# Last Modified: 17th Nov 2020

# Description:
# Creates a backup in the current directory of
# all files in the home directory

tar -cvf my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar ~/* 2>/dev/null

exit 0
