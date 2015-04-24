#!/bin/bash

# Installs the Atom editor
function install_atom(){
  # TODO: check if the 'atom' command exists
  # then we can skip this install, casue it's already installed!
  
  # retrieve the *.deb
  curl -O https://github.com/atom/atom/releases/download/v0.194.0/atom-amd64.deb
	
  # install the *.deb
  sudo dpkg --install atom-amd64.deb
}