#!/bin/bash

# Sets up the Material theme to be installed
function setup_material_theme(){
  local theme_installed=$(package_is_installed paper-gtk-theme)
  local icons_installed=$(package_is_installed paper-icon-theme)
  
  if [ theme_installed == $TRUE ] && [ icons_installed == $TRUE ]
  then
    # do nothing, we have them
    echo "Material Paper Theme already installed"
  else
    echo_with_color $IGreen "Setting up PPA for the Material Paper Theme"
    add_repo "ppa:snwh/pulp"
    add_package "paper-gtk-theme" 
    add_package "paper-icon-theme"
  fi
}
