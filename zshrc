alias packer="apacman"
alias update="apacman -Syu"
alias ll='ls -al --color=auto'
alias ls='ls --color=auto'
alias wget='wget -c $1'
alias jpm="jpm -b /usr/bin/firefox"
alias cower="cower --color=auto"
export GOPATH=~/projects/go
export PATH=$PATH:$GOPATH/bin

# Extract Stuff
extract () {
if [ -f $1 ]; then
    case $1 in
             *.tar.bz2)   tar xjf $1        ;;
             *.tar.gz)    tar xzf $1     ;;
             *.bz2)       bunzip2 $1       ;;
             *.rar)       unrar e $1     ;;
             *.gz)        gunzip $1     ;;
             *.tar)       tar xf $1        ;;
             *.tbz2)      tar xjf $1      ;;
             *.tgz)       tar xzf $1       ;;
             *.zip)       unzip $1     ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1    ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
         esac
else
         echo "'$1' is not a valid file"
fi
}

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
