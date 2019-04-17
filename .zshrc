autoload -U compinit && compinit
autoload -U colors && colors

setopt prompt_subst
PROMPT="%{$fg[yellow]%}[%{$fg[green]%}%m %{$fg[yellow]%}%~]%{$reset_color%} "

setopt completeinword

bindkey -v
bindkey "^H" backward-delete-char
bindkey '^R' history-incremental-search-backward

set -o emacs

# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
# Emacs style
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt incappendhistory

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

#alias tmux="TERM=screen-256color-bce tmux"
alias mv='mv -i'
alias lh='ls -alh'
alias ll='ls -alh --color'
alias ls='ls --color'
alias grep='grep --color'
alias cf='ls | wc -l'

settitle() {
    printf "\033k$1\033\\"
}

#alias tmux="TERM=screen-256color-bce LD_PRELOAD=/lib64/libncurses.so.5 tmux"

HOSTNAME=`hostname`

export PATH=$HOME/.rbenv/bin:$PATH

eval "$(rbenv init -)"
