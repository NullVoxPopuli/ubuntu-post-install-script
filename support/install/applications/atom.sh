#!/bin/bash

# Installs the Atom editor
function install_atom(){
  # TODO: check if the 'atom' command exists
  # then we can skip this install, casue it's already installed!

  # retrieve the *.deb
  curl -L -O https://atom.io/download/deb -o

  #rename missnamed download
  mv deb atom.deb

  # install the *.deb
  sudo dpkg --install atom.deb

  # set up atom packages
  apm install jsformat
  apm install atom-handlebars
  apm install language-slim
  apm install autocomplete-ruby
  apm install aligner-ruby
  apm install git-blame
  apm install tree-view-git-status
  apm install git-history
  apm install merge-conflicts
}
