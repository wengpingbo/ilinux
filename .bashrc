# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias sl='ls'
alias etc='cd /etc'
alias tmp='cd /tmp'
alias h='cd ~-'
alias l='cd ~+'
export PS1="\[\e[30;1m\][\[\e[32;1m\]\u\[\e[30;1m\]@\[\e[32;1m\]\h \[\e[34;1m\]\w\[\e[30;1m\]]\[\e[31;1m\]\!\[\e[30;1m\]$\n\[\e[35;1m\]\t>\[\e[0m\]"

#check the xclip exist
#xclip -version > /dev/null 2>&1
#result=$?
#if [ $result -eq 0 ];then
#  bind -x '"c":"xclip -i"'
#  bind '"\C-L":"`xclip -o`"'
#fi

export CLICOLOR=1

export CDPATH='.:~:~/Desktop:~/Documents'
export HISTIGNORE='&:ls:ls *:exit:cd:cd *'
#export TMOUT=300
#set ignoreeof #ignore Ctrl+D
set show-all-if-ambiguous on
#related with /etc/inputrc || ~/.inputrc
set -o vi 
set EDITOR=vim
set GIT_EDITOR=vim

#correct the spell error in cd command
shopt -s cdspell 
#change the multi-line command into single command line in history
shopt -s cmdhist 
#show the hide file in cd extension
shopt -s dotglob 
#check the window size
shopt -s checkwinsize
