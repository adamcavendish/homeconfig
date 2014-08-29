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
export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# disable autocorrect off entirely
# if you want to partially disable the autocorrect
# you can make alias as: alias vim = 'nocorrect vim '
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Convenient Functions
update-repo() {
    sudo apt-get update -o Dir::Etc::sourcelist="sources.list.d/$1" \
    -o Dir::Etc::sourceparts="-" -o APT::Get::List-Cleanup="0"    
}

export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
export CPLUS_INCLUDE_PATH="/usr/local/include/:$CPLUS_INCLUDE_PATH"
export LD_LIBRARY_PATH="/usr/local/lib/:$LD_LIBRARY_PATH"
export LIBRARY_PATH="/usr/local/lib/:$LIBRARY_PATH"

# Java
export JAVA_HOME="/usr/bin/"

# Keyboard Input
# export XIM=fcitx
# export XIM_PROGRAM=/usr/bin/fcitx
# export XIM_ARGS=""
# export XMODIFIERS="@im=fcitx"
# export GTK_IM_MODULE=fcitx
# export QT4_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx

# Alias
alias sl='ls'

alias suspend='sudo pm-suspend'

alias cp='cp -i'

alias rm='rm -i'
alias mv='mv -i'

alias duh='du -h'
alias dfh='df -h'

alias mkdatedir='mkdir `date +%Y%m%d`'

alias ..='cd ..'
alias cdnut='cd /files/Nutstore/'
alias cdschool='cd /files/Nutstore/School/University/'
alias cdwork='cd /files/Nutstore/Work/ARM/'
alias cdcpp='cd /files/Nutstore/000/CPPWorkSpace/'
alias cdpython='cd /files/Nutstore/000/Python/'
alias cdjava='cd /files/Nutstore/000/Java/'
alias cdopengl='cd /files/Nutstore/000/OpenGL/'
alias cdqt='cd /files/Nutstore/000/QtWorkspace/'
alias cdcmake='cd /files/Nutstore/000/cmake_example/'
alias cdosc='cd /files/Nutstore/Work/OpenSourceCommunity/'
alias cdblog='cd /files/Nutstore/Blog/adamcavendish.github.com/'

alias blogdate='date +%Y-%m-%d'

alias g11='g++ -std=c++11 -fdiagnostics-color=always -march=native -O3 -flto -gdwarf-2 -Wall'
alias clang11='clang++ -std=c++11 -march=native -O3 -Wall'
alias ctags++='ctags -R --c++-kinds=+p --fields=+iaS --extra=+q'

alias aria2='aria2c --dir="/home/adam/aria/" --enable-rpc --rpc-listen-all --rpc-allow-origin-all  --file-allocation=none --max-connection-per-server=3 --max-concurrent-downloads=3 --continue'
alias yaaw='chromium-browser /files/SOURCE_code/YAAW/yaaw/index.html &'

alias nutstore='~/.nutstore/dist/bin/nutstore-pydaemon.py'

alias gvim='gvim -f'
alias em='emacs -nw'
alias subl='/files/Install/sublime/sublime/sublime_text'

alias goagent='python /files/software/goagent/local/proxy.py'
alias snova='sh /files/software/snova-0.22.0/bin/start.sh'

alias pp='ping -i 0.2 www.google.com; ping www.baidu.com'

alias apt-proxy="sudo http_proxy='http://127.0.0.1:8087/' apt-get"

alias dropcache="sudo sync && sudo echo 3 | sudo tee /proc/sys/vm/drop_caches"

# Shell Utility
export PATH="/files/Nutstore/000/BashWorkSpace/shell_utility/:$PATH"

# CSCOPE
alias cscope_init="find . -name \"*.c\" -o -name \"*.cpp\" -o -name \"*.h\" -o -name \"*.hpp\" -o -name \"*.tcc\" > cscope.files; cscope -R -b -i cscope.files"
alias cscope_clean="rm ./cscope.files ./cscope.in.out ./cscope.out ./cscope.po.out"

# --------------------------------------------------

echo "\e[0;1;49;39mHello Adam!\e[0m"

# Ninja
export PATH="/files/SOURCE_code/ninja/ninja/:$PATH"

# llvm/clang
# export PATH="/opt/llvm_debug/bin:$PATH"
# export CPLUS_INCLUDE_PATH="/opt/llvm_debug/include:$CPLUS_INCLUDE_PATH"
# export C_INCLUDE_PATH="/opt/llvm_debug/include:$C_INCLUDE_PATH"
# export LD_LIBRARY_PATH="/opt/llvm_debug/lib:$LD_LIBRARY_PATH"
# export LIBRARY_PATH="/opt/llvm_debug/lib:$LIBRARY_PATH"

export PATH="/opt/llvm_optimized/bin:$PATH"
export CPLUS_INCLUDE_PATH="/opt/llvm_optimized/include:$CPLUS_INCLUDE_PATH"
export C_INCLUDE_PATH="/opt/llvm_optimized/include:$C_INCLUDE_PATH"
export LD_LIBRARY_PATH="/opt/llvm_optimized/lib:$LD_LIBRARY_PATH"
export LIBRARY_PATH="/opt/llvm_optimized/lib:$LIBRARY_PATH"

# export PATH="/opt/llvm_optimized_profiling/bin:$PATH"
# export CPLUS_INCLUDE_PATH="/opt/llvm_optimized_profiling/include:$CPLUS_INCLUDE_PATH"
# export C_INCLUDE_PATH="/opt/llvm_optimized_profiling/include:$C_INCLUDE_PATH"
# export LD_LIBRARY_PATH="/opt/llvm_optimized_profiling/lib:$LD_LIBRARY_PATH"
# export LIBRARY_PATH="/opt/llvm_optimized_profiling/lib:$LIBRARY_PATH"

# OpenCL
# export CPLUS_INCLUDE_PATH="/opt/AMDAPP/include/:$CPLUS_INCLUDE_PATH"
# export C_INCLUDE_PATH="/opt/AMDAPP/include/:$C_INCLUDE_PATH"
# export LD_LIBRARY_PATH="/opt/AMDAPP/include/lib/x86_64/:$LD_LIBRARY_PATH"
# export LIBRARY_PATH="/opt/AMDAPP/include/lib/x86_64/:$LIBRARY_PATH"

# Boost-compute
export CPLUS_INCLUDE_PATH="/files/SOURCE_code/BOOST_compute/compute/include/:$CPLUS_INCLUDE_PATH"

# Qt
export PATH="/opt/Qt/5.3/gcc_64/bin/:$PATH"
export CPLUS_INCLUDE_PATH="/opt/Qt/5.3/gcc_64/include/:$CPLUS_INCLUDE_PATH"
export LD_LIBRARY_PATH="/opt/Qt/5.3/gcc_64/lib/:$LD_LIBRARY_PATH"

# ROOT
# export ROOTSYS="/opt/ROOT/"
# export PATH="$ROOTSYS/bin/:$PATH"
# export CPLUS_INCLUDE_PATH="$ROOTSYS/include/:$CPLUS_INCLUDE_PATH"
# export LD_LIBRARY_PATH="$ROOTSYS/lib/:$LD_LIBRARY_PATH"
# export LIBRARY_PATH="$ROOTSYS/lib/:$LIBRARY_PATH"

# CMake
export PATH="/opt/cmake/bin:$PATH"
# CMake Library Search PATH
export CPLUS_INCLUDE_PATH="/files/Install/OpenGL3rdParty/gl3w/include/:$CPLUS_INCLUDE_PATH"
export C_INCLUDE_PATH="/files/Install/OpenGL3rdParty/gl3w/include/:$C_INCLUDE_PATH"

# OMNet++
export omnetpp_root="/opt/omnetpp-4.4.1/"
export PATH="$omnetpp_root/bin/:$PATH"
export CPLUS_INCLUDE_PATH="$omnetpp_root/include/:$CPLUS_INCLUDE_PATH"
export LD_LIBRARY_PATH="$omnetpp_root/lib/:$LD_LIBRARY_PATH"
# export TCL_LIBRARY="/usr/lib/tcl8.6/"
export OMNETPP_CONFIGFILE="~/.omnetpp/Makefile.inc"
# export HOSTNAME
# export HOST

# Java
export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64/"
export PATH="$JAVA_HOME/bin:$PATH"
export CLASSPATH="$JAVA_HOME/lib:$CLASSPATH"

# uTorrent
export PATH="/opt/utorrent-server/:$PATH"
alias uts='utserver -settingspath /opt/utorrent-server/'

