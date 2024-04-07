# XDG Base Directory
export XDG_BASE_HOME=$HOME/.config
export XDG_CONFIG_HOME=$HOME/.config

# Shell
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin


export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"

case ${OSTYPE} in
    darwin*)
        eval "$(/opt/homebrew/bin/brew shellenv)"
        ;;
    linux*)
        ;;
esac
. "$HOME/.cargo/env"
