#!/bin/bash

# Installs Chrome
function install_chrome(){
  # TODO: check if the 'google-chrome' command exists
  # then we can skip this install, casue it's already installed!

  # retrieve the *.deb
  curl -O  https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

  # install the *.deb
  sudo dpkg --install google-chrome-stable_current_amd64.deb
}
