#!/bin/bash

# Sets up the handbrake to be installed
function setup_handbrake(){
  local handbrake_installed=$(package_is_installed handbrake-gtk)
  
  if [ handbrake_installed == $TRUE ]
  then
    # do nothing, we have them
    echo "Handbrake already installed"
  else
    echo_with_color $IGreen "Setting up PPA for Handbrake"
    add_repo "ppa:stebbins/handbrake-releases"
    add_package "handbrake-gtk" 
  fi
}
