# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'specify %d:'
zstyle ':completion:*' completer _list _oldlist _expand _complete _ignored _match _correct _approximate _prefix
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format 'Completing %d:'
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd .. directory
zstyle ':completion:*' insert-unambiguous false
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %S%U%l%u \[%B%p%b\]%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' '+r:|[._-]=** r:|=**' '+l:|=* r:|=*'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' prompt 'Corrections (%e):'
zstyle ':completion:*' select-prompt %S%U%l%u \[%B%p%b\]%s
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/lsl/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
HISTFILE=~/.histfile
HISTSIZE=9999
SAVEHIST=9999
setopt autocd extendedglob nomatch
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# Lines configured by zsh-newuser-install
# autoload -Uz zsh-newuser-install; zsh-newuser-install
# to re-run zsh-newuser-install

############
# ALIASING #
############

alias ls='ls -p'
alias ll='ls -lhp'
alias la='ls -lap'

#######################
# PRIVILEGE ELEVATION #
#######################

alias sls='sudo ls -p'
alias sll='sudo ls -lhp'
alias sla='sudo ls -lap'

alias scat='sudo cat'
alias sfind='sudo find'
alias sgrep='sudo grep'
alias sless='sudo less'
alias svim='sudo -E vim'
