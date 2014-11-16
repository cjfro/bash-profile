alias make_alias='history | tail -n 2 | head -n 1 | python ~/Projects/alias-maker/alias_maker.py $1'
alias source_bash='source ~/.bash_profile'
alias log='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset" --abbrev-commit'

source /usr/local/git/contrib/completion/git-completion.bash
source /usr/local/git/contrib/completion/git-prompt.sh

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
if [ -f /etc/bash_completion.d/git-completion.bash ]; then
    . /etc/bash_completion.d/git-completion.bash;
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="\[\033[01;32m\]\t \[\033[01;34m\]\W\[\033[01;33m\]\$(__git_ps1 ' %s')\[\033[01;34m\] \$\[\033[00m\] "
export PS1="\[\033[G\]$PS1"