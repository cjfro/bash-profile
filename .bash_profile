### quick-alias (https://github.com/cjfro/quick-alias) ###

alias make-alias='history | quick-alias $1'

### git styling / completion ###

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="\[\033[01;32m\]\t \[\033[01;34m\]\W\[\033[01;33m\]\$(__git_ps1 ' %s')\[\033[01;34m\] \$\[\033[00m\] "
export PS1="\[\033[G\]$PS1"

export GIT_COMPLETION_CHECKOUT_NO_GUESS=1

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

### rvm ###

[[ -s '~/.rvm/scripts/rvm' ]] && source '~/.rvm/scripts/rvm'
source ~/.rvm/scripts/rvm

### aliases ###

alias fixup='git add .;git commit -m "fixup";git rebase -i master'
alias gpull='git pull origin $(git rev-parse --symbolic-full-name --abbrev-ref HEAD)'
alias gpush='git push origin $(git rev-parse --symbolic-full-name --abbrev-ref HEAD)'
alias gpush-f='git push origin $(git rev-parse --symbolic-full-name --abbrev-ref HEAD) -f'
alias co='git checkout'
alias br='git branch'
alias cob='git checkout -b'
alias log='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset" --abbrev-commit'
alias gs='git status'
alias gd='git diff'
alias open-bash='sublime ~/.bash_profile'
alias source-bash='source ~/.bash_profile'
alias mysql-start='mysql.server start'
