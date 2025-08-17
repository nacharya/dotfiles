#!/bin/bash

function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}

export PS1="\[\033[32m\]\u:\w\n\[\033[33m\]\$(parse_git_branch)\[\033[00m\]% "

#
# git aliases
alias glog='git log --pretty=oneline'
alias gtree='git log --graph --decorate --oneline'
alias ginfo='git remote show origin'
alias ginfo_='git remote show origin -n | grep "Fetch URL:" | sed -E "s#^.*/(.*)$#\1#" | sed "s#.git$##"'

alias gldel='git branch -d'
alias grdel='git push origin --delete'

alias gfetch='git fetch --all --prune'
