#!/bin/bash
#
# Installs more general system-ish packages
function install_general{
  #######
  # Gnome
  add_package "gnome"

  ###############
  # General Tools
  add_package "git vim curl"
}
