# ubuntu-post-install-script

## Instructions

Download the zip file and unzip anywhere on your Ubuntu computer
run

     cd ubuntu-post-install-script-master/
    ./setup.sh
    
To get all of my personal preferences and programs.

I'll be adding configurable parameters later.


## What's Included?

### Installs Programs

  - Desktop Environment
    - Gnome
    - [Material Paper GTK Theme](http://itsfoss.com/install-paper-theme-linux/)
    - [Ceti-2 Theme](https://github.com/horst3180/Ceti-2-theme)

  - Media
    - Audio
      - Veromix
      - Clementine
      - Audacity
    - Image
      - Gimp
    - Video
      - Kdenlive
      - VLC
      - Handbrake
      
  - System Tools 
    - gparted
    - grub customizer
    - WinUSB
    - EtherApe
    - gufw (graphical interface to ufw (firewall))
    - VirtualBox

  - Development
    - vim
    - arduino IDE
    - [RVM](https://rvm.io/rvm/install)
    - Latest Stable Ruby
    - [Atom Editor](https://github.com/atom/atom)
    - PostgreSql
    - KDiff3
    - Meld

  - 3D Printing
    - Cura
      https://software.ultimaker.com
      https://github.com/daid/Cura

  - Internet
    - Google Chrome
    - [WeeChat](https://help.ubuntu.com/community/WeeChat)
    - Bleep (when it comes out for linux)
    - FileZilla
    - Firefox
    - Tor Browser

### Additional Setup:

  - copies helper scripts
  - writes .bash_profile
    - Custom PS1
      - Username
      - Hostname
      - IP Address
      - Ruby Version
      - Current Git Branch
    - Includes helper scripts in $PATH located at ~/Scripts
  - creates organization dev folders:
    - ~/Development
    - ~/OpenSource