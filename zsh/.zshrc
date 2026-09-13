alias ls="ls -a" 	# show dot files whenever list is used
alias copy="pbcopy"	# copy to clipboard
alias kan="sudo launchctl kickstart -k system/org.custom.kanata"
alias attu="ssh evan314@attu.cs.washington.edu"

# completions for many commands
 if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi


# terminal prompt customization
PROMPT="%B%F{black} %D{%I.%M %p %a %d  %n} %1~ %? %# %b%f"


# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
