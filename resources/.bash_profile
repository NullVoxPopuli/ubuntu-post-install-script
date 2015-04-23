[[ -s "$HOME/scripts/bash-support/paths.sh" ]] && source "$HOME/scripts/bash-support/paths.sh"
[[ -s "$HOME/scripts/bash-support/git-prompt.sh" ]] && source "$HOME/scripts/bash-support/git-prompt.sh"
[[ -s "$HOME/scripts/bash-support/ps1.sh" ]] && source "$HOME/scripts/bash-support/ps1.sh"
[[ -s "$HOME/scripts/bash-support/current-command.sh" ]] && source "$HOME/scripts/bash-support/current-command.sh"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# handy aliases
alias ll="ls -l"
alias la="ls -la"

# tab completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# colors!
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi
