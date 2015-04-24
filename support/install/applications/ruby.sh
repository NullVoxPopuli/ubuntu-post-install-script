#!/bin/bash
#
# Installs
# - RVM
# - Ruby
function install_ruby(){
  # TODO: Check if rvm is already installed.
  # https://rvm.io/rvm/install
  curl -sSL https://rvm.io/mpapis.asc | gpg --import -

  curl -sSL https://get.rvm.io | bash -s stable --ruby

  # TODO: Check if the latest ruby is already installed
}
