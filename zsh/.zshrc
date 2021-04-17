source ~/.zinit/bin/zinit.zsh
fpath=(/home/rix/.config/zsh/zsh-completions/src $fpath)

# plugins
#zinit ice pick'async.zsh' src'pure.zsh'
#zinit light sindresorhus/pure
#zinit light zsh-users/zsh-autosuggestions

zinit wait lucid for \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-completions \
    zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-history-substring-search

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

alias icat='kitty +kitten icat'
alias fonts="kitty + list-fonts --psnames"

alias feh="feh --scale-down --auto-zoom"

alias mtp='jmtpfs /media/Android/'
alias vim="nvim"
alias monitor="xrandr -q | grep ' connected' | cut -d ' ' -f1 "
alias rmorphan="sudo pacman -Rns $(pacman -Qtdq)"
alias cleanpkgs="paru -c"

alias history='history -10000'
alias ls='lsd' #-Fh --color=always -v --group-directories-first'
alias l='ls'            #size,show type,human readable
alias ll='ls -l'        #long list
alias la='ls -a'        #long list,show almost all,show type,human readable
alias lla='ls -lAFh'    #long list
alias lr='ls -tRFh'     #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'     #long list,sorted by date,show type,human readable
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

alias grep='grep --color'

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
export HISTTIMEFORMAT="[%F %T] "

export MOZ_X11_EGL=1

export XDG_CONFIG_HOME="$HOME/.config/"
#export MPD_HOST=$HOME/.config/mpd/socket

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.yarn/bin
export PATH=$PATH:$HOME/.local/bin/spicetify-cli

export DEBUG=True
export EDITOR='nvim'
#export MPD_HOST="localhost"


# auto completion
autoload -U compinit
compinit
#compdef _gnu_generic fd
#zicompinit
#zicdreplay
#zinit cdreplay -q 

#zstyle ':completion:*' menu select
#zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
#zmodload zsh/complist

# workon() {
#    [ -z "$PROJECT_HOME" ] && {
#        unset -f workon;
#        export WORKON_HOME="$HOME/.virtualenvs/"
#        export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
#        source "$HOME/.local/bin/virtualenvwrapper.sh"
#    }
#  workon "$@"
#}


#[ -f ~/.zinit/plugins/.fzf.zsh ] && source ~/.zinit/plugins/.fzf.zsh
#export FZF_DEFAULT_OPS='--extended'
#export FZF_DEFAULT_COMMAND="rg --files --no-ignore-vcs --hidden --follow -g '!node_modules/' -g '!.git' -g '!__pycache__'"
#export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

#pfetch
eval "$(starship init zsh)"
