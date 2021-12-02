syntax on
set t_Co=256
set clipboard+=unnamed
set clipboard+=unnamedplus
set autoindent
set smartindent
set expandtab
set encoding=utf-8
set fileencoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,utf-8,ucs-2,cp932,sjis
set tabstop=2
set shiftwidth=4
set cursorline
set number
set showmode
set showmatch
set title
set backspace=indent,eol,start
set inccommand=split
set imdisable
set hidden
set nobackup
set nowritebackup
set conceallevel=0
" htmlのマッチするタグに%でジャンプ
source $VIMRUNTIME/macros/matchit.vim

vnoremap x "_x
nnoremap x "_x

hi Comment ctermfg=gray

if has('mouse')
  set mouse=a
endif

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')

  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})

  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------

let g:cheatsheet#cheat_file = '~/.cheatsheet.md'

call plug#begin('~/.vim/plugged')
  Plug 'rust-lang/rust.vim'
call plug#end()

syntax enable
filetype plugin indent on

" 保存時に自動でrustfmt
let g:rustfmt_autosave = 1
