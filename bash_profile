export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
alias tmux="TERM=screen-256color-bce tmux"
source ~/.git-completion.bash
## ls alias
alias ls='ls -G'
alias ll='ls -la'
alias l.='ls -d .* --color=auto'
## cd alias
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
## grep alias
alias grep='grep --color=auto'
## mkdir alias
alias mkdir='mkdir -pv'
## wget alias
alias wget='wget -c'
## rsync alias
alias rsync='rsync --progress'
