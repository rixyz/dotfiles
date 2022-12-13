#zmodload zsh/zprof

source ~/.zinit/bin/zinit.zsh
fpath=(/home/rix/.config/zsh/zsh-completions/src $fpath)

# plugins
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
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

alias icat='kitty +kitten icat'
alias fonts="kitty + list-fonts --psnames"

alias feh="feh --scale-down --auto-zoom"

alias mtp='jmtpfs /media/Android/'
alias vim="nvim"
alias monitor="xrandr -q | grep ' connected' | cut -d ' ' -f1 "
alias rmorphan="sudo pacman -Rns $(pacman -Qtdq)"
alias cleanpkgs="paru -c"
alias ..='cd ..'

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

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.yarn/bin

export DEBUG=True
export EDITOR='nvim'
export _JAVA_AWT_WM_NonREPARENTING=1
export _JAVA_AWT_WM_NONREPARENTING=1
export WINIT_HIDPI_FACTOR=1.0

# auto completion
#autoload -Uz compinit
autoload -U compinit
compinit

eval "$(starship init zsh)"

#zprof

# pnpm
export PNPM_HOME="/home/rix/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# NVM
export NVM_DIR="$HOME/.config//nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
