#!/bin/bash

# copy .bash_profile and scripts directory
# to the home folder
function copy_scripts_to_home_directory{
  cp ../../resources/home/* ~/ -R
}
