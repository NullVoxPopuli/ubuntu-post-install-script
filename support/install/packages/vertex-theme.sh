function setup_vertex_theme(){
  local theme_installed=$(package_is_installed vertex-theme)

  if [ theme_installed == $TRUE ]
  then
    # do nothing, we have them
    echo "Vertex Theme already installed"
  else
    echo_with_color $IGreen "Setting up PPA for the Vertex Theme"
    sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.10/ /' >> /etc/apt/sources.list.d/vertex-theme.list"
    add_package "vertex-theme"
  fi
}
