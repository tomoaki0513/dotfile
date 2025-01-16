# 短縮
alias vim='nvim'
alias ll='ls -la'
alias la='ls'
alias grep='grep --color'
alias g='git'

# 作業ディレクトリ移動
alias prog="cd /mnt/c/Users/Tomak/OneDrive/Desktop/prog"
alias desk="cd /mnt/c/Users/Tomak/OneDrive/Desktop"
alias obs="cd /mnt/c/Users/Tomak/Mydoc/Mydoc"
# tmuxの初期設定
alias tmit="~/tmux_conf/tmit.sh"
# -u:UTF-8 -2:256色
alias tmux="tmux -u -2"
alias fiep="find ./ -type f -print0 | xargs -0 grep"
# 上書き時に確認
alias cp="cp -i"
alias mv="mv -i"
# MACアドレス表
alias mac="vim /mnt/c/Users/Tomak/MacAddress.txt"
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
