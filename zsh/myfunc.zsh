# configファイル内のssh先を検索して移動できる
function sshsp() {
  local host=$(grep -E "^Host " ~/.ssh/config | sed -e 's/Host[ ]*//g' | fzf)
  if [ -n "$host" ]; then
    ssh $host
  fi
}

function wareki() {
  python3 ~/.config/zsh/wareki.py
}

function tmu(){
    local tmux_session=$(tmux ls | fzf | awk -F: '{print $1}')
    if [ -n "$tmux_session" ]; then
        tmux attach -t $tmux_session
    fi
}
