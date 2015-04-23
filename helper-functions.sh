#!/bin/bash 

# Prints Text with a given color and clears the color when done.
#
# $1 - Color
# $2 - Text
function echo_with_color {
   echo "$1$2$Color_Off" 
}

# Appends the given package names to the variable that is
# passed to apt-get install
#
# $1 - Space separated string of package names
function add_package {
  APT_PACKAGES_TO_INSTALL = "$APT_PACKAGES_TO_INSTALL $1"
}
