#!/bin/bash

# copy .bash_profile and scripts directory
# to the home folder
function copy_scripts_to_home_directory(){
  cp resources/home/* ~/ -R
}


function create_folders(){
    # All personal development here
  mkdir ~/Development
  # All projects not created by me here
  mkdir ~/OpenSource
  # Folder for the desktop to cycle through pictures I like
  mkdir ~/Pictures/Backgrounds
}

# Install helper scripts that I find make life easier
# Also creates common folders
function setup_home_directory(){
  create_folders
  copy_scripts_to_home_directory
  # don't need no bashrc
  rm ~/.bashrc
}
