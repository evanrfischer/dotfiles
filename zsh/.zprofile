#persistent deduplication of path array elements and the PATH variable
typeset -gU path PATH

# homebrew utility that adds related paths
eval "$(/opt/homebrew/bin/brew shellenv)"


path=(
  $HOME/.local/bin
  $path
)

# removes non-existent directories by replacing with Null
path=($^path(N-/))

export PATH
