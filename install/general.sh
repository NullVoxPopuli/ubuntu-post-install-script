#!/bin/bash
#
# Installs more general system-ish packages
function install_general{
  #######
  # Gnome
  add_package "gnome"
  
  ######################
  # Material Paper Theme
  add_repo "ppa:snwh/pulp"
  add_package "paper-gtk-theme paper-icon-theme"
}
