# alias file for bash

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# for modeltester
alias mtrw='~/projects/simulator/Model/ModelMgr/Windows/Release/modeltester.exe'
alias mtdw='~/projects/simulator/Model/ModelMgr/Windows/Debug/modeltester.exe'
alias mtr='~/projects/simulator/Model/ModelMgr/Linux64/Release/modeltester'
alias mtd='~/projects/simulator/Model/ModelMgr/Linux64/Debug/modeltester'


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
alias 2beast='cd /tools/simulator/arm/beast_U3003_revA/verification;cd /tools/simulator/arm/beast_U3003_revA/rtl'

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


# for finding verilog signals
alias fv='find . -name \*.v -or -name \*.sv | xargs grep'
# for finding C/C++ variables
alias fc='find . -name \*.h -or -name \*.cpp | xargs grep'


# for dec-hex converter
alias hex2dec='printf "%d\n" '
alias dec2hex='printf "%x\n" '

# directory switching
alias b='pushd +1 >/dev/null && pwd'
alias f='pushd -0 >/dev/null && pwd'

cd () {
 if [ "$*" = "" ]; then
 pushd $HOME >/dev/null
 else
 pushd "$*" >/dev/null
 fi
}
