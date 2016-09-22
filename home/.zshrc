# Load plugins
source <(antibody init)
antibody bundle mafredri/zsh-async # Must be first
antibody bundle < $HOME/.zsh_bundles

# Command not found
source "/etc/zsh_command_not_found"

# Load homeshick and add completion
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath) # Must be BEFORE compinit

# Load virtualenvwrapper
WORKON_HOME="$HOME/.config/virtualenv"
source /usr/local/bin/virtualenvwrapper_lazy.sh

# Set completion
autoload -U bashcompinit # python-argcomplete (at least) needs bashcompinit
bashcompinit
autoload -U compinit
compinit

# Add yotta auto completion (uses bashcompinit)
eval "$(register-python-argcomplete yotta)"
eval "$(register-python-argcomplete yt)"

# Add command aliases
alias ls='ls --color=auto -v'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias trash='gvfs-trash'

# Vim CLI mode
bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^r' history-incremental-search-backward

# History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt hist_reduce_blanks
setopt inc_append_history_time

# # Default options
# setopt aliases
# setopt alwayslastprompt
# setopt appendhistory
# setopt autolist
# setopt automenu
# setopt autoparamkeys
# setopt autoparamslash
# setopt autoremoveslash
# setopt badpattern
# setopt banghist
# setopt bareglobqual
# setopt beep
# setopt bgnice
# setopt caseglob
# setopt casematch
# setopt checkjobs
# setopt clobber
# setopt debugbeforecmd
# setopt equals
# setopt evallineno
# setopt exec
# setopt flowcontrol
# setopt functionargzero
# setopt glob
# setopt globalexport
# setopt globalrcs
# setopt hashcmds
# setopt hashdirs
# setopt hashlistall
# setopt histbeep
# setopt histsavebycopy
# setopt hup
# setopt listambiguous
# setopt listbeep
# setopt listtypes
# setopt multibyte
# setopt multifuncdef
# setopt multios
# setopt nomatch
# setopt notify
# setopt promptcr
# setopt promptpercent
# setopt promptsp
# setopt rcs
# setopt shortloops
# setopt unset
