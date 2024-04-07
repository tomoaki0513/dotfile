" 行番号
set number
" tabでスペースを使う
set expandtab
" 言語に合わせたインデント
set smartindent
" インデントの幅
set shiftwidth=4
" tabをスペースに
set expandtab
" 不可視文字を表示
set list
set listchars=tab:>-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
" tabキーで挿入するスペースの幅
set tabstop=4
set softtabstop=4
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
" 短径選択がやりやすく
set virtualedit=block
" コマンドライン補完
set wildmenu
" 補完メニューの高さ
set pumheight=10
" ヘルプの言語
set helplang=ja,en
" ステータスライン
set laststatus=3
" マウス操作
if has('mouse')
  set mouse=a
endif
set cmdheight=1
set showtabline=1

" コマンドの無効化
nnoremap <C-@> <Esc>

" xで削除した時ヤンクしないように
vnoremap x "_x
nnoremap x "_x

" 視覚的移動
nmap gj gj<SID>g
nmap gk gk<SID>g
nnoremap <script> <SID>gj gj<SID>g
nnoremap <script> <SID>gk gk<SID>g
nmap <SID>g <Nop>
