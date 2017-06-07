# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#GITBASH
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Alias definitions.
# ~/.bash_aliases, instead of adding them here directly.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# MY CUSTOMIZATION
export PATH=./node_modules/.bin/:$PATH

# ANSI color codes
RS='\[\e[0m\]'    # reset
HC='\[\e[1m\]'    # hicolor
UL='\[\e[4m\]'    # underline
INV='\[\e[7m\]'   # inverse background and foreground
FBLK='\[\e[30m\]' # foreground black
FRED='\[\e[31m\]' # foreground red
FGRN='\[\e[32m\]' # foreground green
FYEL='\[\e[33m\]' # foreground yellow
FBLE='\[\e[34m\]' # foreground blue
FMAG='\[\e[35m\]' # foreground magenta
FCYN='\[\e[36m\]' # foreground cyan
FWHT='\[\e[37m\]' # foreground white
BBLK='\[\e[40m\]' # background black
BRED='\[\e[41m\]' # background red
BGRN='\[\e[42m\]' # background green
BYEL='\[\e[43m\]' # background yellow
BBLE='\[\e[44m\]' # background blue
BMAG='\[\e[45m\]' # background magenta
BCYN='\[\e[46m\]' # background cyan
BWHT='\[\e[47m\]' # background white


# PROMPT
color_prompt=yes

if [ "$color_prompt" = yes ]; then
    # export PS1='\n${debian_chroot:+($debian_chroot)} \[\e[1;39m\]\u: \w\[\e[1;39m\] \n > '
    export PS1="\${debian_chroot:+(\$debian_chroot)}\[\e[01;39m\]\u: \w \[\e[1;35m\]\$git_branch\$git_dirty\[\e[01;39m\] \n > "
    PS2='>>'
else
    PS1='${debian_chroot:+($debian_chroot)}\u:\w\$ '
    PS2=">>"
fi



# enable 256 coros to terminal
export TERM=xterm-256color


# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm