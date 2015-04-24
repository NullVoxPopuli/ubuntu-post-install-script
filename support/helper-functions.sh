#!/bin/bash 

# Prints Text with a given color and clears the color when done.
#
# $1 - Color
# $2 - Text
function echo_with_color() {
   echo -e $1$2$Color_Off
}

#debug output only
#
# $1 - Text
function print_debug(){
  if [ $DEBUG == $TRUE ]
  then
    echo $1
  fi
}

# Appends the given package names to the variable that is
# passed to apt-get install if the package is not already
# installed
#
# $1 - Space separated string of package names
function add_package() {
  package_is_installed $1
  local already_installed=$?
  
  print_debug "$1 already_installed: $already_installed\n"
  
  if [ $already_installed != $TRUE ]
  then
    print_debug "adding"
    APT_PACKAGES_TO_INSTALL="$APT_PACKAGES_TO_INSTALL $1"
  fi
}



# alias for sudo add-apt-repository
#
# $1 - Repository
function add_repo(){
   sudo add-apt-repository $1
}

# Loads all scripts in a directory
#
# $1 - The directory relative to the directory setup.sh is ran from
function include_directory(){
  for file in $1 ; do
    if [ -f "$file" ]
    then
      . "$file"
    fi
  done
}

# Shows the install status of a package
#
# $1 - Package Name
function package_install_status(){
  # http://stackoverflow.com/a/25974841
  dpkg -s $1 2>/dev/null >/dev/null
  return $? # 0 if installed, 1 otherwise
}

# Checks if a package is installed or not
#
# $1 - Package Name
function package_is_installed(){
  return $(package_install_status $1)
}

# Checks if a program is installed
#
# $1 - Program Name
function program_is_installed(){
  local program_path=$(which $1)
  
  if [ -z program_path ] 
  then
    return $FALSE
  else
    return $TRUE
  fi
}