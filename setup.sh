#!/bin/bash
#
# Fresh Install Script for Ubuntu
#  By NullVoxPopuli / Preston Sego
#
# By default, everything is accepted.
# It is assumed that the host system is 64bit.
# 
# Installs Programs:
# System:
# - Material Paper GTK Theme
#   http://itsfoss.com/install-paper-theme-linux/
# - Gnome
# - Veromix
# - Gimp
#
# Development:
# - RVM
#   https://rvm.io/rvm/install
# - Latest Stable Ruby
# - Atom editor (deb)
#   https://github.com/atom/atom
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

########################
# Include Helper Scripts
########################
source $(dirname $0)/colors.sh
source $(dirname $0)/helper-functions.sh
source $(dirname $0)/splash-message.sh
source $(dirname $0)/install/general.sh

#####################################
# Start Building Install Package List
#####################################
PKGLIST=""

install_general
install_development
install_3d_printing
install_internet




#############
# Finally....
#############

########
# Update 
sudo apt-get update

#########
# Install
sudo apt-get install $APT_PACKAGES_TO_INSTALL 

################
# Create Folders
################
# All personal development here
mkdir ~/Development
# All projects not created by me here
mkdir ~/OpenSource
# Folder for the desktop to cycle through pictures I like
mkdir ~/Pictures/Backgruonds
# .bash_profile will include everything in here
mkdir ~/Scripts
