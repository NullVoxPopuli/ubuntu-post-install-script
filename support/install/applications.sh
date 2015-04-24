#!/bin/bash
#
# Runs all scripts under applications
#
# These are programs that don't have an 
# apt-repository or require some additional setup
# after install.

include_directory "$(dirname $0)/support/install/applications/*"

function install_applications(){
  
  install_ruby

}
