# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
source $ZDOTDIR/alias.zsh
source $ZDOTDIR/plugin.zsh
source $ZDOTDIR/options.zsh
source $ZDOTDIR/prompt.zsh
source $ZDOTDIR/myfunc.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$PATH:$HOME/.config/alacritty/bin

test -e "${ZDOTDIR}/.iterm2_shell_integration.zsh" && source "${ZDOTDIR}/.iterm2_shell_integration.zsh"

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/usr/local/share/dotnet:/Users/nakamuratomoaki/.dotnet/tools:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Users/nakamuratomoaki/.local/share/zinit/polaris/bin:/Users/nakamuratomoaki/.cargo/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/opt/homebrew/opt/mysql@5.7/bin:/Users/nakamuratomoaki/go/bin:/Users/nakamuratomoaki/.orbstack/bin:/Users/nakamuratomoaki/.config/alacritty/bin:/Users/nakamuratomoaki/.orbstack/bin:/Users/nakamuratomoaki/.config/alacritty/bin:/Users/nakamuratomoaki/.local/bin:/Users/nakamuratomoaki/.local/bin

[ -f "/Users/nakamuratomoaki/.ghcup/env" ] && source "/Users/nakamuratomoaki/.ghcup/env" # ghcup-env

# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
