#!/bin/bash

FILE=file/backup/gnome_terminal_setings_bkp.txt

#Command to remove theme
dconf load /org/gnome/terminal/ < $FILE
