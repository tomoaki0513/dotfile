" 行番号
set number
" tabでスペースを使う
set expandtab
" 言語に合わせたインデント
set smartindent
" インデントの幅
set shiftwidth=4
" tabキーで挿入するスペースの幅
set tabstop=4
" カレントディレクトリに移動
set autochdir
" 使う文字コード
set encoding=utf-8
" 書き込む文字コード
set fileencoding=utf-8
" 読み込む文字コード左から順番
set fileencodings=utf-8,cp932,iso-2022-jp,euc-jp,ucs-2,sjis
" クリップボードと連携(できていない)
set clipboard+=unnamed
" インデントを保持
set autoindent
" カーソル行をハイライト
set cursorline
" 現在のモードを左下に表示
set showmode
" 対応する括弧を強調表示
set showmatch
set matchtime=1
" 入力中のコマンドを右下に表示
set showcmd
" 開いているファイル名が上に表示(全画面だと見えない)
set title
" インサートモード中の削除を柔軟にする
set backspace=indent,eol,start
" シンタックスハイライト
syntax on
" 検索するときに大文字小文字の区別をしない
set ignorecase
" 文字列置換をインタラクティブに表示
set inccommand=split
" 保存されていないファイルがあっても別ファイルを開ける
set hidden
" ファイル保存時にバックアップファイルを作らない
set nobackup
" ファイル上書きの前のバックアップファイルを作らない
set nowritebackup
" jsonのダブルクオーテーションが表示されるようになるらしい
set conceallevel=0


" htmlのマッチするタグに%でジャンプ
source $VIMRUNTIME/macros/matchit.vim

" xで消したときにヤンクしないように
vnoremap x "_x
nnoremap x "_x

" コメントアウトの文字色がgrayに
hi Comment ctermfg=gray

" マウス操作
if has('mouse')
    set mouse=a
endif

"dein Scripts-----------------------------
if &compatible
    set nocompatible
endif
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.config/nvim/dein')
    call dein#begin('~/.config/nvim/dein')

    call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})

    call dein#end()
    call dein#save_state()
endif


" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif
"End dein Scripts-------------------------

call plug#begin('~/.vim/plugged')
  Plug 'rust-lang/rust.vim'
call plug#end()

" チートシートの参照場所
let g:cheatsheet#cheat_file = '~/.cheatsheet.md'

filetype plugin indent on

" 保存時に自動でrustfmt
let g:rustfmt_autosave = 1
