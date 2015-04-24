#!/bin/bash

include_directory "$(dirname $0)/support/install/packages/*"

# Installs more general system-ish packages
function setup_packages(){
  ###############
  # General Tools
  add_package "git"
  add_package "vim"
  add_package "curl"
  
  # gpg is for importing keys for apt-repositories.
  # It's likely this is already installed on all Ubuntu Systems
  add_package "gnupg" 

  #######
  # Gnome
  add_package "gnome"

  ########
  # Others
  setup_material_theme
  
}

# Installs all the packages set up by setup_packages
function install_packages(){
  
  if ! [ -z $APT_PACKAGES_TO_INSTALL ]
  then
    echo_with_color $IBlue "Installing the following packages: "
    echo_with_color $Yellow "$APT_PACKAGES_TO_INSTALL"
    echo_with_color $Blue 'by running: sudo apt-get update; sudo apt-get install $APT_PACKAGES_TO_INSTALL'
    printf "\n\n"
    
    # Update
    sudo apt-get update
    # Install
    sudo apt-get install $APT_PACKAGES_TO_INSTALL
  else
    echo_with_color $IGreen "All packages are already installed."  
  fi
}