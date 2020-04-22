function tran() {
    # translate-shell
    vocab_path='/home/pwyq/new-vocabularies/vocab_April.txt'
    echo "================================" >> $vocab_path
    # :zh = translate to Chinese; sed removes special characters
    trans :zh $1 | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g" | tee -a $vocab_path
    echo -e "\n" >> $vocab_path
}

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

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# SHOW git branch
# git prompt
bldred='\e[1;31m' # Red
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
txtrst='\e[0m'    # Text Reset - Useful for avoiding color bleed


PROMPT_COMMAND='git branch &>/dev/null; if [ $? -eq 0 ];then printf "\033[01;33m";git branch | grep ^*|sed s/\*/Git@/;printf "\033[00m"; fi'

#PROMPT_COMMAND="printf '\n'"
#export PS1="\[$bldred\]\u\[$txtrst\]@\[$bldwht\]\h\[$txtrst\]:\[$bldcyn\]\w\[$txtrst\] ($(git branch|grep ^*|sed s/\*//))$"

#export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]
#\[\033[01;34m\]\w\[\033[00m\]$(git branch &>/dev/null; if [ $? -eq 0 ];
#then echo '\[\033[01;33m\](git-b:$(git branch | grep ^*|sed s/\*\
#//))\[\033[00m\]'; fi)$ "
