# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' max-errors 2 not-numeric
zstyle :compinstall filename '/Users/harciga/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
bindkey -v
# End of lines configured by zsh-newuser-install
set -o vi
alias ls='ls -laFcrtG'
alias info='info --vi-keys'
alias twipe="t timeline hek__tor -l | cut -d' ' -f1 | xargs -n1 t delete status -f"

alias in='task add +in'
# MacPorts Installer addition on 2013-08-10_at_12:27:23: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/Library/Frameworks/Python.framework/Versions/3.4/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=~/.bin/git-latexdiff/:$PATH
export PATH=~/.bin/:$PATH

export LANG=en_US.UTF-8
unset LC_CTYPE

export EDITOR=vim
export base=/opt/local/var/macports/sources/rsync.macports.org/release/tarballs/ports
