#!/bin/bash
#
# Installs
# - RVM
# - Ruby
function install_ruby(){
  # TODO: Check if rvm is already installed.
  curl -sSL https://get.rvm.io | bash -s stable --ruby

  # TODO: Check if the latest ruby is already installed
}
