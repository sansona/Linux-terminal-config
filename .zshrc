
# Initiate tmux on start
if [ "$TMUX" = "" ]; then tmux; fi
# Path to your oh-my-zsh installation.
export ZSH="/home/sansona/.oh-my-zsh"

# Init xterm-256 color for certain themes
if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi

# Theme settings
ZSH_THEME="clean"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="spaceship"

# Setup aliases here
alias screensh="gnome-screenshot -a"
alias python="python3.7"
alias pip="pip3"
cl()
{
	cd $@
	ls
}

# Setup plugins here
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Setup fuck here
eval $(thefuck --alias)
