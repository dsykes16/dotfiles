# noclobber should be a *nix default
set -o noclobber

# dart/flutter
PATH=$PATH:$HOME/.pub-cache/bin

# rancher desktop
PATH=$PATH:$HOME/.rd/bin

# go
export GOPATH=$HOME
PATH=$PATH:$(go env GOPATH)/bin

# pyenv
eval "$(pyenv init -)"

# zsh-completions
#if type brew &>/dev/null; then
#  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
#fi
autoload -Uz compinit
autoload -Uz bashcompinit
compinit && bashcompinit
# ent completion is broken by the alias
#source <(ent completion zsh)
source <(atlas completion zsh)
source <(kubectl completion zsh)
source <(nerdctl completion zsh)
source <(flutter bash-completion)

# Aliases
alias docker=nerdctl
alias la='ls -lah'
alias vim=/usr/local/bin/vim
alias ent='go run -mod=mod entgo.io/ent/cmd/ent'
