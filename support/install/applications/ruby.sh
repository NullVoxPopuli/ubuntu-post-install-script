#!/bin/bash
#
# Installs
# - RVM
# - Ruby
function install_ruby{
  curl -sSL https://get.rvm.io | bash -s stable --ruby

}
