#!/bin/bash
# 
# Prints summary and basic help.
function display_splash(){
  echo ""
  echo "-------------------------------------------------"
  echo_with_color $Yellow "Ubuntu Post Install Script"
  echo_with_color $Cyan "  By: NullVoxPopuli / Preston Sego"
  echo "-------------------------------------------------"
  echo ""
  echo "There are 3 phases to this install:"
  echo " - Install apt packages"
  echo " - Download and install non-apt packages"
  echo " - Copy Files, .bash_profile, etc to Home Directory"
  echo ""
  
  echo_with_color $Red "No help yet! :-("
  printf "\n\n\n"
}
