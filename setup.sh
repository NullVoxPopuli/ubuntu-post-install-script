#!/bin/bash
#
# Fresh Install Script for Ubuntu
#  By NullVoxPopuli / Preston Sego
#
# By default, everything is accepted.
# It is assumed that the host system is 64bit.
#
# Installs Programs:
# General:
# - Gnome
# - Material Paper GTK Theme
#   http://itsfoss.com/install-paper-theme-linux/
# - Ceti-2 Theme
#   https://github.com/horst3180/Ceti-2-theme
# - Veromix
# - Gimp
# - Clementine
# - Kdenlive
# - gparted
# - grub customizer
# - VLC
# - WinUSB
# - VirtualBox
# - EtherApe
# - Audacity
# - Handbrake
# - gufw (graphical interface to ufw (firewall))
#
# Development:
# - vim
# - arduino IDE
# - RVM
#   https://rvm.io/rvm/install
# - Latest Stable Ruby
# - Atom editor (deb)
#   https://github.com/atom/atom
# - PostgreSql
# - KDiff3
# - Meld
#
# 3D Printing:
# - Cura (deb)
#   https://software.ultimaker.com
#   https://github.com/daid/Cura
#
# Internet:
# - Google Chrome (deb)
# - WeeChat
#   https://help.ubuntu.com/community/WeeChat
# - Bleep (when it comes out for linux)
# - FileZilla
# - Firefox
# - Tor Browser
#
# Additional Setup:
# - copies helper scripts
# - writes .bash_profile
#   - Custom PS1
#     - Username
#     - Hostname
#     - IP Address
#     - Ruby Version
#     - Current Git Branch
#   - Includes helper scripts in $PATH
# - creates organization dev folders:
#   - ~/Development
#   - ~/OpenSource
#

##################################
# All scripts need access to these
##################################
APT_PACKAGES_TO_INSTALL=""
DOWNLOAD_PATH="tmp"

# create directory for downloaded files to go in.
mkdir $DOWNLOAD_PATH

########################
# Include Helper Scripts
########################
source $(dirname $0)/support/colors.sh
source $(dirname $0)/support/helper-functions.sh
source $(dirname $0)/support/splash-message.sh

include_directory "$(dirname $0)/support/install/*"


display_splash


#####################################
# Start Building Install Package List
#####################################


######################
# Install apt packages
######################

# apt-get packages
install_packages
# Update
sudo apt-get update
# Install
sudo apt-get install $APT_PACKAGES_TO_INSTALL

#################################
# Install Downloaded Applications
#################################

# apps that have to be downloaded and installed 'manually'
install_applications


#####################################################
# Install helper scripts that I find make life easier
#####################################################
copy_scripts_to_home_directory


################
# Create Folders
################
# All personal development here
mkdir ~/Development
# All projects not created by me here
mkdir ~/OpenSource
# Folder for the desktop to cycle through pictures I like
mkdir ~/Pictures/Backgrounds
# .bash_profile will include everything in here
mkdir ~/Scripts
