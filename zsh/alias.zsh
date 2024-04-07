# 短縮
alias vim='nvim'
alias ll='eza -la'
alias la='eza'
alias grep='rg --color'
alias g='git'

# obsidianディレクトリ
alias obs="cd $HOME/myDoc"
alias task="vim $HOME/myDoc/task.md"
alias memo="vim $HOME/myDoc/memo"
# 作業ディレクトリ移動
alias prog="cd $HOME/Desktop/prog"
alias desk="cd $HOME/Desktop"
# tmuxの初期設定
alias tmit="~/tmux_conf/tmit.sh"
# -u:UTF-8 -2:256色
alias tmux="tmux -u -2"
alias fiep="find ./ -type f -print0 | xargs -0 rg"
# 上書き時に確認
alias cp="cp -i"
alias mv="mv -i"
# ディレクトリ移動
for N in `seq 10`
do
  S='.'
  D=''
  for I in `seq $N`
  do
    S=$S.
    D=$D../
  done
  alias cd$S="cd $D"
done
