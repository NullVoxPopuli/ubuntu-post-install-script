#!/bin/bash

source $(dirname $0)/packages/material-theme.sh


# Installs more general system-ish packages
function install_packages{
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
