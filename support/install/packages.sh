#!/bin/bash

include_directory "$(dirname $0)/support/install/packages/*"

# Installs more general system-ish packages
function setup_packages(){
  ###############
  # General Tools
  add_package "git"
  add_package "vim"
  add_package "curl"
  add_package "npm"

  # gpg is for importing keys for apt-repositories.
  # It's likely this is already installed on all Ubuntu Systems
  add_package "gnupg" 

  add_package "gparted"
  add_package "gufw"
  add_package "kdiff3"
  add_package "meld"

  #############
  # Development
  add_package "postgresql"
  add_package "postgresql-contrib"
  add_package "pgadmin3"
  add_package "qt4-qmake"
  add_package "qt5-qmake"
  add_package "libxslt-dev" 
  add_package "libxml2-dev"
  add_package "libqtwebkit-dev"
  add_package "libpq-dev"
  
  #######
  # Audio
  add_package "veromix"
  add_package "audacity"
  add_package "clementine"
  
  #######
  # Image
  add_package "gimp"
  
  #######
  # Video
  add_package "kdenlive"
  add_package "vlc"
  add_package "browser-plugin-vlc"
  
  ##########
  # Internet
  add_package "firefox"
  add_package "filezilla"
  add_package "weechat"
  add_package "etherape"
  
  #######
  # Gnome
  add_package "gnome"

  ########
  # Others
  setup_handbrake
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
