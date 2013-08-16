# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="bira"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# disable autocorrect off entirely
# if you want to partially disable the autocorrect
# you can make alias as: alias vim = 'nocorrect vim '
DISABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# Alias
alias sl='ls'

alias suspend='sudo pm-suspend'

alias cp='cp -i'

alias rm='rm -i'
alias mv='mv -i'

alias du='du -h'
alias df='df -h'

alias ..='cd ..'
alias cdwork='cd /files/Nutstore/'
alias cdcpp='cd /files/Nutstore/000/CPPWorkSpace/'
alias cdpython='cd /files/Nutstore/000/Python/'
alias cdopengl='cd /files/Nutstore/000/OpenGL/'
alias cdqt='cd /files/Nutstore/000/QtWorkspace/'

alias g11='g++-4.8 -std=c++11 -march=native -O3 -Wall -Weffc++'
alias ctags++='ctags -R --c++-kinds=+p --fields=+iaS --extra=+q'

alias aria2='aria2c --dir="/home/adam/aria/" --enable-rpc --rpc-listen-all --rpc-allow-origin-all  --file-allocation=none --max-connection-per-server=3 --max-concurrent-downloads=3 --continue'

alias gvim='gvim -f'
alias goagent='python /files/software/goagent/local/proxy.py'


