" プラグインマネージャーインストール
let s:jetpackfile = stdpath('data') .. '$XDG_DATA_HOME/nvim/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
let s:jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
if !filereadable(s:jetpackfile)
  call system(printf('curl -fsSLo %s --create-dirs %s', s:jetpackfile, s:jetpackurl))
endif

source $XDG_CONFIG_HOME/nvim/plugin-config.vim
source $XDG_CONFIG_HOME/nvim/editor.vim
source $XDG_CONFIG_HOME/nvim/color.vim
source $XDG_CONFIG_HOME/nvim/language.vim
source $XDG_CONFIG_HOME/nvim/lualine.vim
