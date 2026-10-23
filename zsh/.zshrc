# --- ALIAS ---

# SYSTEM
alias ls="ls -a" 	# show dot files whenever list is used
alias copy="pbcopy"	# copy to clipboard

# APP
alias lkan="sudo launchctl kickstart -k system/org.custom.kanata"

# CONFIG
alias kan="vim dotfiles/kanata/.config/kanata/evan.kbd"
alias aer="vim dotfiles/aerospace/.aerospace.toml"
alias ckan=" kanata --check -c ~/.config/kanata/evan.kbd"
alias zsh="vim dotfiles/zsh/.zshrc"

# SSH
alias attu="ssh evan314@attu.cs.washington.edu"
alias sec="ssh evan314@umnak.cs.washington.edu"


# --- TERMINAL ---

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
