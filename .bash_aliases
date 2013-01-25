# alias file for bash

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# some more ls aliases
alias ll='ls -lh'
alias la='ls -A'
alias lt='ls -lt'
alias rhel="sudo chroot /rhel4/ su - $USER"
alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'

# directory access alias
alias 2sim='cd ~/projects/simulator'
alias 2back='cd ~/projects/backend/source/'
alias 2front='cd ~/projects/Frontend/'
alias 2ver='cd /tools/simulator/src/verilator/'

# command alias
alias mnr='make clean all'
alias mnrw='make clean all TARGET=Windows'
alias mnd='make CONFIG=Debug clean all'
alias mndw='make CONFIG=Debug clean all TARGET=Windows'
# for typo
alias gti='git'

# for vi
alias vi=vim

# history
alias h=history

