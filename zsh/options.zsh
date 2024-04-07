autoload -Uz compinit && compinit -u
compinit
setopt +o nomatch
zstyle ':completion::complete:*' use-cache true
zstyle ':completion:*:default' menu select=1

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

autoload colors
zstyle ':completion:*' list-colors "${LS_COLORS}"
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([%0-9]#)*=0=01;31'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
zstyle ':completion:*:*:git:*' script .script/git-completion.bash

# 過去に実行したコマンドを選択。ctrl-rにバインド
case ${OSTYPE} in
    darwin*)
        function peco-select-history() {
          BUFFER=$(\history -n -r 1 | peco --query "$LBUFFER")
          CURSOR=$#BUFFER zle clear-screen
        }
        zle -N peco-select-history
        bindkey '^r' peco-select-history
        ;;
    linux*)
        ;;
esac

# fzf
export FZF_COMPLETION_TRIGGER=','
typeset -Tgx FZF_DEFAULT_OPTS fzf_default_opts " "
fzf_default_opts=(
  '--height=90%'
  '--reverse'
  '--border'
  '--inline-info'
  '--prompt="➜  "'
  '--margin=0,2'
  '--tiebreak=index'
  '--no-mouse'
  '--filepath-word'
)

() {
  local -A color_map=(
    [fg]='-1'
    [bg]='-1'
    [hl]='33'
    [fg+]='250'
    [bg+]='235'
    [hl+]='33'
    [info]='37'
    [prompt]='37'
    [pointer]='230'
    [marker]='230'
    [spinner]='37'
  )

  for x in "${(k)color_map[@]}"; do
    fzf_color_opts+=("${x}:${color_map[${x}]}")
  done
  fzf_default_opts+=( '--color="'"${(j.,.)fzf_color_opts}"'"' )
}

() {
  local -a fzf_bind_opts=()
  local -A bind_map=(
    [?]='toggle-preview'
    [ctrl-a]='toggle-all'
    ['ctrl-]']='replace-query'
    [ctrl-w]='backward-kill-word'
    [ctrl-x]='jump'
    [ctrl-z]='ignore'
    [up]='preview-page-up'
    [down]='preview-page-down'
  )

  for x in "${(k)bind_map[@]}"; do
    fzf_bind_opts+=("${x}:${bind_map[${x}]}")
  done
  fzf_default_opts+=( '--bind="'"${(j:,:)fzf_bind_opts}"'"' )
}

