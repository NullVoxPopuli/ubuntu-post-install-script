#!/bin/bash
#
# Fresh Install Script for Ubuntu
#  By NullVoxPopuli / Preston Sego
#
# By default, everything is accepted.
# It is assumed that the host system is 64bit.

##################################
# All scripts need access to these
##################################
APT_PACKAGES_TO_INSTALL=""
DOWNLOAD_PATH="tmp"
TRUE=0 # 0 means success in bash (exited with status 0, for example)
FALSE=1
DEBUG=$FALSE #$TRUE

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
setup_packages

######################
# Install apt packages
######################
install_packages

#################################
# Install Downloaded Applications
#################################

# apps that have to be downloaded and installed 'manually'
install_applications


#####################################################
# Install helper scripts that I find make life easier
# Also creates common folders
#####################################################
setup_home_directory
