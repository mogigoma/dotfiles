source $HOME/.zshenv

################################################################################
# ZSH Settings
################################################################################
bindkey -e

setopt hist_ignore_dups
setopt nobeep
setopt noflowcontrol

################################################################################
# Completion
################################################################################
autoload -U compinit promptinit
compinit
promptinit

zstyle ':completion::complete:*' use-cache 1

################################################################################
# Command aliases
################################################################################
alias snowman='printf "\xE2\x98\x83\n"'
alias lol='printf "\xE7\xAC\x91\n"'

alias b='cd ..'
alias @='pwd'

alias ls='ls -CFG'
alias ll='ls -lh'
alias l.='ll -d .*'
alias lr='ll -R'
alias la='ll -A'

alias du='du -csh'
alias df='df -h'

alias grep='grep --color --recursive'

alias m='mplayer'
