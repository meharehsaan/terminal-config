# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
	#PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias ida='/idafree-8.2/ida64'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# vim become open in insert mode automatically
alias vim="vim -c 'startinsert'"

# setting zoxide alias
#alias 'cd=z'


# greet the user
function greet() {
 	 echo ‘Hello’ $1‘!’
}

# setting by default vim
export EDITOR="/usr/bin/vim"

# for zoxide package
eval "$(zoxide init bash)"

echo "######## Hy ME)-(AR #####################################" | lolcat
#echo "### Figure 0ut Why - Before What ########################" | lolcat
echo "######################### Exploit code, Not people ######" | lolcat
# echo "####### Fortune Says that ###############################" |lolcat
fortune | lolcat
# Created by `pipx` on 2023-05-31 20:17:59
export PATH="$PATH:/home/mehar/.local/bin:/root/.local/bin"
# export CLASSPATH="$CLASSPATH:/usr/share/java/mysql-connector-j-8.0.33.jar:/home/mehar/webtomcat/apache-tomcat-10.1.10/lib/servlet-api.jar:/home/mehar/webtomcat/apache-tomcat-10.1.10/lib/jsp-api.jar:."
# export CATALINA_HOME="/home/mehar/webtomcat/apache-tomcat-10.1.10"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
#export SDK_ROOT=/home/mehar/AndroidSDK

export SHELL="/usr/bin/bash"

# my aliases
alias install="sudo apt install"
alias sinstall="sudo snap install"
alias remove="sudo apt-get remove"
alias autoremove="sudo apt-get autoremove"
alias autoclean="sudo apt-get autoclean"
alias clean="sudo apt-get clean"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias pwncollege="ssh -i key hacker@dojo.pwn.college"

alias swapoff="sudo swapoff -a"
alias swapon="sudo swapon -a"
alias aslroff="echo 0 | sudo tee /proc/sys/kernel/randomize_va_space"
alias aslron="echo 2 | sudo tee /proc/sys/kernel/randomize_va_space"
alias pgoogle="ping google.com"

alias sysctl="sudo systemctl"
alias clc="clear"
alias src="source"
alias py="python3"
alias ..="cd .."

alias gpush="git push origin"
alias gcommit="git commit -m"
alias gst="git status"
alias gcl="git clone"
alias gadd="git add -A"
alias glog="git log"

alias tmp="touch ~/Desktop/tmp.txt"
alias cutter="~/cutter/cutter.AppImage"
alias md="mkdir"
alias rd="rmdir"
alias nasm="nasm -felf64"
alias gdb="gdb -q"
alias gccx="gcc -no-pie -fno-stack-protector -D_FORTIFY_SOURCE=0"
alias sub="subl ."
alias gdbpeda="echo 'source ~/debuggers/peda/peda.py' > .gdbinit && echo 'Embedded PEDA in GDB'"
alias gdbpwndbg="echo 'source ~/debuggers/pwndbg/gdbinit.py' > .gdbinit && echo 'Embedded PWNDBG in GDB'"
alias gdbgef="echo 'source ~/debuggers/gef/.gdbinit-gef.py' > .gdbinit && echo 'Embedded GEF in GDB'"
