#!/bin/bash

BASE_FOLDER=file
THEME=gnome_terminal_vscode_theme.txt
BACKUP_FOLDER=backup
FILE_BACKUP=gnome_terminal_setings_bkp.txt


#Create backup folder
mkdir $BASE_FOLDER/$BACKUP_FOLDER

#Create backup settings
dconf dump /org/gnome/terminal/ > $BASE_FOLDER/$BACKUP_FOLDER/$FILE_BACKUP

#Command to install theme
dconf load /org/gnome/terminal/ < $BASE_FOLDER/$THEME
