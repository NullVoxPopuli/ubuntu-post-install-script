# Fresh Install Script for Ubuntu
#  By NullVoxPopuli / Preston Sego
#
# By default, everything is accepted.
# It is assumed that the host system is 64bit.
# 
# Installs Programs:
# System:
# - Material Paper GTK Theme
#   http://itsfoss.com/install-paper-theme-linux/
# - Gnome
#
# Development:
# - RVM
#   https://rvm.io/rvm/install
# - Latest Stable Ruby
# - Atom editor (deb)
#   https://github.com/atom/atom
# 
# 3D Printing:
# - Cura (deb)
#   https://software.ultimaker.com
#   https://github.com/daid/Cura
# 
# Internet:
# - Google Chrome (deb)
#
# Additional Setup:
# - copies helper scripts
# - writes .bash_profile
#   - Custom PS1
#     - Username
#     - Hostname
#     - IP Address
#     - Ruby Version
#     - Current Git Branch
#   - Includes helper scripts in $PATH
# - creates organization dev folders:
#   - ~/Development
#   - ~/OpenSource 
#

#####################################
# Start Building Install Package List
PKGLIST=""

#######
# Gnome
PKGLIST = "$PKGLIST gnome"

# Note about installing Material Paper Theme
sudo add-apt-repository ppa:snwh/pulp
PKGLIST = "$PKGLIST paper-gtk-theme paper-icon-theme"

# Update 
sudo apt-get update

# Install
sudo apt-get install $PKGLIST
