#source ./git-completion.bash
fpath=(
    ~/.zsh/completions
    ${fpath}
)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# if [ -f $XDG_CONFIG_HOME/zsh/git-completion.zsh ]; then
#     source $XDG_CONFIG_HOME/zsh/git-completion.bash
# fi
# if [ -f $XDG_CONFIG_HOME/zsh/git-prompt.zsh ]; then
#     source $XDG_CONFIG_HOME/zsh/git-prompt.zsh
# fi

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

setopt PROMPT_SUBST
#PS1='%F{green}%n %f%F{cyan}%~ %f%F{red}$(__git_ps1 "(%s)")%f\$ '
PS1='%F{green}%n %f%F{cyan}%~ %f%F{red}%f\$ '
