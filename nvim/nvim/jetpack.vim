packadd vim-jetpack
call jetpack#begin()
" プラグインマネージャ
Jetpack 'tani/vim-jetpack', {'opt': 1}
" 空白の協調表示
Jetpack 'bronson/vim-trailing-whitespace' " gitの差分表示
Jetpack 'airblade/vim-gitgutter'
" リンター
Jetpack 'dense-analysis/ale'
" ステータスバー
Jetpack 'nvim-lualine/lualine.nvim'
" lsp
Jetpack 'neoclide/coc.nvim', { 'branch': 'release' }
" 縦移動の高速化
Jetpack 'andymass/vim-matchup'
" mdプレビュー
Jetpack 'kannokanno/previm'
" コメントアウト
Jetpack 'tpope/vim-commentary'
" 括弧の自動補完
Jetpack 'jiangmiao/auto-pairs'
Jetpack 'machakann/vim-sandwich'
" htmlタグ補完
Jetpack 'mattn/emmet-vim'
" ファイラ
Jetpack 'scrooloose/nerdtree'
" Jetpack 'nvim-telescope/telescope-file-browser.nvim', { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
" カラースキーム
Jetpack 'freeo/vim-kalisi'
" カラーコード可視化
Jetpack 'norcalli/nvim-colorizer.lua'
" github copilot
Jetpack 'github/copilot.vim'
" CSVをみやすく
Jetpack 'mechatroner/rainbow_csv'
" 自動保管
Jetpack 'vim-denops/denops.vim'
Jetpack 'vim-skk/denops-skkeleton.vim'
Jetpack 'Shougo/ddc.vim'
Jetpack 'Shougo/ddc-matcher_head'
Jetpack 'Shougo/ddc-sorter_rank'
call jetpack#end()
