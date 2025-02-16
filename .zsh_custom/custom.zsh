# noclobber should be a *nix default
set -o noclobber

# gpg-agent ssh
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye > /dev/null

# dart/flutter
PATH=$PATH:$HOME/.pub-cache/bin

# rust
PATH=$HOME/.cargo/bin:$PATH

# rancher desktop
# PATH=$PATH:$HOME/.rd/bin

# go
export GOPATH=$HOME
PATH=$PATH:$(go env GOPATH)/bin

# brew curl override
PATH=/usr/local/opt/curl/bin:$PATH

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
#source <(atlas completion zsh)
source <(kubectl completion zsh)
#source <(nerdctl completion zsh)
source <(flutter bash-completion)
[[ -e "/Users/$USER/lib/oci_autocomplete.sh" ]] && source "/Users/$USER/lib/oci_autocomplete.sh"

# Aliases
#alias docker=nerdctl
alias la='ls -lah'
#alias vim='/usr/local/bin/vim'
alias ent='go run -mod=mod entgo.io/ent/cmd/ent'
alias kc='kubectl'
alias kca='kubectl apply -f'
alias kcg='kubectl get'
alias kcd='kubectl describe'
