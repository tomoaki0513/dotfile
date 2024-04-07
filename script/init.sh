#!/bin/zsh
set -eu

# XDG Base Directory
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export PATH=$HOME/.local/bin:$PATH

mkdir -p $XDG_CONFIG_HOME
mkdir -p $XDG_DATA_HOME

setup_zsh() {
    ln -fsv $HOME/dotfile/.zshenv $HOME/.zshenv
    ln -fsv $HOME/dotfile/zsh/.zshrc $HOME/.zshrc
    ln -fsv $HOME/dotfile/zsh $XDG_CONFIG_HOME/zsh
    # mkdir -p $XDG_DATA_HOME/zsh

    ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
}

setup_tmux() {
    ln -fsv ~/dotfile/tmux/.tmux.conf $HOME/.tmux.conf
}

setup_git() {
    ln -fsv ~/dotfile/git $XDG_CONFIG_HOME/git
}

setup_neovim() {
    ln -fsv ~/dotfile/nvim $XDG_CONFIG_HOME/nvim

    nvim --headless +JetpackSync +qa
}

setup_alacritty() {
    case $__CFBundleIdentifier in
        org.alacritty)
            ln -fsv ~/dotfile/alacritty $XDG_CONFIG_HOME/alacritty
            ;;
        *)
            ;;
    esac
}


setup_zsh
setup_tmux
setup_git
setup_neovim
setup_alacritty
