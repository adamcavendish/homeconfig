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
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
export CPLUS_INCLUDE_PATH="/usr/local/include/:$CPLUS_INCLUDE_PATH"
export LD_LIBRARY_PATH="/usr/local/lib/:$LD_LIBRARY_PATH"
export LIBRARY_PATH="/usr/local/lib/:$LIBRARY_PATH"

# Java
export JAVA_HOME="/usr/bin/"

# Keyboard Input
export XMODIFIERS="@im=ibus"
export GTK_IM_MODULE=ibus
export QT4_IM_MODULE=ibus
export QT_IM_MODULE=ibus

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
alias cdwork='cd /files/Nutstore/'
alias cdcpp='cd /files/Nutstore/000/CPPWorkSpace/'
alias cdpython='cd /files/Nutstore/000/Python/'
alias cdjava='cd /files/Nutstore/000/Java/'
alias cdopengl='cd /files/Nutstore/000/OpenGL/'
alias cdqt='cd /files/Nutstore/000/QtWorkspace/'
alias cdcmake='cd /files/Nutstore/000/cmake_example/'
alias cdosc='cd /files/Nutstore/Work/OpenSourceCommunity/'
alias cdblog='cd /files/Nutstore/Blog/adamcavendish.github.com/'

alias blogdate='date +%Y-%m-%d'

alias g11='g++-4.8 -std=c++11 -march=native -O3 -flto -gdwarf-2 -Wall'
alias ctags++='ctags -R --c++-kinds=+p --fields=+iaS --extra=+q'

alias aria2='aria2c --dir="/home/adam/aria/" --enable-rpc --rpc-listen-all --rpc-allow-origin-all  --file-allocation=none --max-connection-per-server=3 --max-concurrent-downloads=3 --continue'
alias yaaw='chromium-browser /files/SOURCE_code/YAAW/yaaw/index.html &'

alias nutstore='~/.nutstore/dist/bin/nutstore-pydaemon.py'

alias gvim='gvim -f'

alias goagent='python /files/software/goagent/local/proxy.py'
alias snova='sh /files/software/snova-0.22.0/bin/start.sh'

alias pp='ping -i 0.2 www.google.com; ping www.baidu.com'

alias apt-proxy="sudo http_proxy='http://127.0.0.1:8087/' apt-get"

# CSCOPE
alias cscope_init="find . -name \"*.c\" -o -name \"*.cpp\" -o -name \"*.h\" -o -name \"*.hpp\" -o -name \"*.tcc\" > cscope.files; cscope -R -b -i cscope.files"
alias cscope_clean="rm ./cscope.files ./cscope.in.out ./cscope.out ./cscope.po.out"

##################################################
## @hostname adam-ros
if [ `hostname` = "adam-ros" ]; then
	echo "\e[0;1;49;39mHello adam-ros\e[0m"

	alias rossource='source "/home/adam/Documents/ros_robot/rbuildws/setup.zsh"'
	alias exportpcl='export "/opt/pcl1_7_0"'

	alias roboexport='\
export CPLUS_INCLUDE_PATH=/files/Nutstore/000/ROSWorkSpace/rosstuffs/navigation/base_local_planner/include/:$CPLUS_INCLUDE_PATH;
export CPLUS_INCLUDE_PATH=/files/Nutstore/000/ROSWorkSpace/rosstuffs/navigation/voxel_grid/include/:$CPLUS_INCLUDE_PATH;
export CPLUS_INCLUDE_PATH=/files/Nutstore/000/ROSWorkSpace/rosstuffs/navigation/voxel_grid/include/:$CPLUS_INCLUDE_PATH;
export CPLUS_INCLUDE_PATH=/files/Nutstore/000/ROSWorkSpace/rosstuffs/navigation/nav_core/include/:$CPLUS_INCLUDE_PATH;
export CPLUS_INCLUDE_PATH=/opt/ros/groovy/stacks/navigation/base_local_planner/msg_gen/cpp/include/:$CPLUS_INCLUDE_PATH;
export CPLUS_INCLUDE_PATH=/opt/ros/groovy/stacks/navigation/base_local_planner/msg_gen/cpp/include/:$CPLUS_INCLUDE_PATH;
export CPLUS_INCLUDE_PATH=/opt/ros/groovy/stacks/navigation/base_local_planner/cfg/cpp/:$CPLUS_INCLUDE_PATH;
export CPLUS_INCLUDE_PATH=/opt/ros/groovy/stacks/navigation/costmap_2d/include/:$CPLUS_INCLUDE_PATH;
export CPLUS_INCLUDE_PATH=/opt/ros/groovy/stacks/navigation/costmap_2d/cfg/cpp/:$CPLUS_INCLUDE_PATH;
export CPLUS_INCLUDE_PATH=/opt/ros/groovy/include/pcl-1.6/:$CPLUS_INCLUDE_PATH;
export CPLUS_INCLUDE_PATH=/opt/ros/groovy/include/:$CPLUS_INCLUDE_PATH;
export CPLUS_INCLUDE_PATH=/usr/include/eigen3/:$CPLUS_INCLUDE_PATH;
'
	# Blender
	export PATH="/opt/blender-2.68a/:$PATH"

	# Linux Driver
	alias driverexport='
export CPLUS_INCLUDE_PATH="/files/Nutstore/000/LinuxDriver/include/:$CPLUS_INCLUDE_PATH";
export C_INCLUDE_PATH="/files/Nutstore/000/LinuxDriver/include/:$C_INCLUDE_PATH";
export LD_LIBRARY_PATH="/files/Nutstore/000/LinuxDriver/lib/:$LD_LIBRARY_PATH";
export LIBRARY_PATH="/files/Nutstore/000/LinuxDriver/lib/:$LIBRARY_PATH";
'

	# CMake 2.8.11
	# export PATH="/opt/cmake2.8.11/bin/:$PATH"

##################################################
## @hostname adam-ThinkpadE425
elif [ `hostname` = "adam-ThinkpadE425" ]; then
	echo "\e[0;1;49;39mHello adam-ThinkpadE425\e[0m"
	# Using OpenCL for Java
	# export LIBAPARAPI="/opt/APARAPI/aparapi-read-only"
	
	# CPM - CMake
	export CPM_DIR="/files/SOURCE_code/CPM/cpm/"
	
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

	# Qt-Android
	export PATH="/opt/Qt5.2.0-android/5.2.0/gcc_64/bin/:/opt/Qt5.2.0-android/Tools/QtCreator/bin/:$PATH"
	export CPLUS_INCLUDE_PATH="/opt/Qt5.2.0-android/5.2.0/gcc_64/include/:$CPLUS_INCLUDE_PATH"
	export LD_LIBRARY_PATH="/opt/Qt5.2.0-android/5.2.0/gcc_64/lib:$LD_LIBRARY_PATH"
	export LIBRARY_PATH="/opt/Qt5.2.0-android/5.2.0/gcc_64/lib:$LIBRARY_PATH"
	# Qt
	export PATH="/opt/Qt5.2.0/5.2.0/gcc_64/bin/:/opt/Qt5.2.0/Tools/QtCreator/bin/:$PATH"
	export CPLUS_INCLUDE_PATH="/opt/Qt5.2.0/5.2.0/gcc_64/include/:$CPLUS_INCLUDE_PATH"
	export LD_LIBRARY_PATH="/opt/Qt5.2.0/5.2.0/gcc_64/lib:$LD_LIBRARY_PATH"
	export LIBRARY_PATH="/opt/Qt5.2.0/5.2.0/gcc_64/lib:$LIBRARY_PATH"

	# ROOT
	# export ROOTSYS="/opt/ROOT/"
	# export PATH="$ROOTSYS/bin/:$PATH"
	# export CPLUS_INCLUDE_PATH="$ROOTSYS/include/:$CPLUS_INCLUDE_PATH"
	# export LD_LIBRARY_PATH="$ROOTSYS/lib/:$LD_LIBRARY_PATH"
	# export LIBRARY_PATH="$ROOTSYS/lib/:$LIBRARY_PATH"

	# OpenSceneGraph
	export LD_LIBRARY_PATH="/usr/local/lib64:$LD_LIBRARY_PATH"

	# CMake Library Search PATH
	export CPLUS_INCLUDE_PATH="/files/Install/OpenGL3rdParty/gl3w/include/:$CPLUS_INCLUDE_PATH"
	export C_INCLUDE_PATH="/files/Install/OpenGL3rdParty/gl3w/include/:$C_INCLUDE_PATH"

	# Akaroa and OMNet++
	export PATH="/opt/akaroa-2.7.12/bin/:$PATH"
	export C_INCLUDE_PATH="/opt/akaroa-2.7.12/include/:$C_INCLUDE_PATH"
	export CPLUS_INCLUDE_PATH="/opt/akaroa-2.7.12/include/:$CPLUS_INCLUDE_PATH"
	export LD_LIBRARY_PATH="/opt/akaroa-2.7.12/lib/:$LD_LIBRARY_PATH"
	export LIBRARY_PATH="/opt/akaroa-2.7.12/lib/:$LIBRARY_PATH"

	export PATH="/opt/omnetpp-4.3.1/bin/:$PATH"
	export CPLUS_INCLUDE_PATH="/opt/omnetpp-4.3.1/include/:$CPLUS_INCLUDE_PATH"
	export LD_LIBRARY_PATH="/opt/omnetpp-4.3.1/lib/:$LD_LIBRARY_PATH"
	export TCL_LIBRARY="/usr/share/tcltk/tcl8.5/"
	export omnetpp_root="/opt/omnetpp-4.3.1/"
	export OMNETPP_CONFIGFILE="~/.omnetpp/Makefile.inc"
	# export HOSTNAME
	# export HOST

	# Java
	export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64/"
	export PATH="$JAVA_HOME/bin:$PATH"
	export CLASSPATH="$JAVA_HOME/lib:$CLASSPATH"

	# Android
	export PATH="/files/Install/android/adt-bundle-linux-x86_64-20131030/sdk/platform-tools/:$PATH"

elif [ `hostname` = "adam-TerransForce" ]; then
	echo "\e[0;1;49;39mHello adam-TerransForce\e[0m"

else
	echo "\e[0;1;49;39mWho are You?\e[0m"
fi

