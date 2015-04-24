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
  if [ $DEBUG == $TRUE ]
  then
    echo_with_color $Red "Debugging On"
    print_debug "Test Print Debug Function"
    
    echo "FALSE: $FALSE"
    echo "TRUE: $TRUE"
    echo "package_is_installed apt (0): $(package_is_installed apt; echo $?)"
    echo "program_is_installed apt-get (0): $(program_is_installed apt-get; echo $?)"
    echo "package_install_status apt (0): $(package_install_status apt; echo $?)"
    echo "package_install_status aoeu (1): $(package_install_status aoeu; echo $?)"
    
  fi
  printf "\n\n\n"
}
