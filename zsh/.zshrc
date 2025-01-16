#~~~~~~~~~~~~~~~~~~~~
# ZSH CONFIG
#~~~~~~~~~~~~~~~~~~~~
export EDITOR="nvim"
export ZSH="/home/zk/.oh-my-zsh"
export RADV_PERFTEST='rt'

# Start keychain and load SSH keys
eval $(keychain --eval --agents ssh github-uva > /dev/null 2>&1)
eval $(keychain --eval --agents ssh id_ed25519 > /dev/null 2>&1)
eval $(keychain --eval --agents ssh uva-rivanna > /dev/null 2>&1)

# Automatically export SSH_AUTH_SOCK if an agent is running
if [ -z "$SSH_AUTH_SOCK" ]; then
    export SSH_AUTH_SOCK=$(find /tmp/ssh-* -type s -name "agent.*" 2>/dev/null | head -n 1)
fi

# OH-MY-ZSH Updates
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

#~~~~~~~~~~~~~~~~~~~~
# THEME
#~~~~~~~~~~~~~~~~~~~~
#ZSH_THEME="robbyrussell"
ZSH_THEME="clean"

#~~~~~~~~~~~~~~~~~~~~
# HISTORY
#~~~~~~~~~~~~~~~~~~~~
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
HIST_STAMPS="mm/dd/yyyy"

#~~~~~~~~~~~~~~~~~~~~
# Plugins
#~~~~~~~~~~~~~~~~~~~~
plugins=(git)
source $ZSH/oh-my-zsh.sh

#~~~~~~~~~~~~~~~~~~~~
# User Configuration
#~~~~~~~~~~~~~~~~~~~~
export LANG=en_US.UTF-8

#~~~~~~~~~~~~~~~~~~~~
# Aliases
#~~~~~~~~~~~~~~~~~~~~
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias vi="nvim"
alias viconf="nvim ~/.config/nvim/init.vim"
alias alacritty-reload="pkill -SIGUSR1 alacritty"
