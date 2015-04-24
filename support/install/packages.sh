#!/bin/bash

include_directory "$(dirname $0)/support/install/packages/*"

# Installs more general system-ish packages
function install_packages(){
  ###############
  # General Tools
  add_package "git vim curl"

  #######
  # Gnome
  add_package "gnome"

  ########
  # Others
  setup_material_theme
  
}
