local options = {
    -- エンコード
    encoding = "utf-8",
    fileencoding = "utf-8",
    -- 開いているファイル名が上に表示(全画面だと見えない)
    title = true,
    -- バックアップファイルを作らない
    backup = false,
    writebackup = false,
    -- クリップボードと連携
    clipboard = "unnamedplus",
    -- コマンドラインの幅
    cmdheight = 1,
    -- jsonのダブルクオーテーションが表示されるようになるらしい
    conceallevel = 0,
    -- ハイライト
    hlsearch = true,
    -- 検索時に大文字小文字の区別をしない
    ignorecase = true,
    -- 検索時に大文字が含まれている場合は区別する
    smartcase = true,
    -- マウス操作
    mouse = "a",
    -- 補完メニューの高さ
    pumheight = 10,
    -- 現在のモードを左下に表示
    showmode = true,
    -- タブバー
    showtabline = 1,
    -- 言語に合わせたインデント
    smartindent = true,
    -- スワップファイルを作らない
    swapfile = true,
    -- ターミナルの色
    termguicolors = true,
    timeoutlen = 300,
    -- ファイルを閉じてもundoできる
    undofile = true,
    -- シェル
    shell = "zsh",
    -- tabでスペースを使う
    expandtab = true,
    -- インデントの幅
    shiftwidth = 4,
    -- インシデントを保持
    autoindent = true,
    -- tabで挿入するスペースの幅
    tabstop = 4,
    -- カーソル行をハイライト
    cursorline = true,
    -- カラムを常に表示
    signcolumn = "yes",
    -- 行の折り返し
    wrap = true,
    -- コマンドラインの補完
    wildoptions = "pum",
    scrolloff = 5,
    -- 不可視文字を表示
    list = true,
    listchars = "tab:>-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%",
    -- カレントディレクトリに移動
    autochdir = true,
    -- 対応する括弧を強調表示
    showmatch = true,
    matchtime = 1,
    -- 入力中のコマンドを右下に表示
    showcmd = true,
    -- 削除を柔軟に
    backspace = "indent,eol,start",
    -- 文字列置換をインタラクティブに表示
    inccommand = "split",
    -- 保存されていないファイルがあっても別ファイルを開ける
    hidden = true,
    -- 短径選択がやりやすく
    virtualedit = "block",
    -- コマンドライン補完
    wildmenu = true,
    -- ヘルプの言語
    helplang = "ja,en",
    -- ステータスライン
    laststatus = 3,
    winblend = 30,
    ambiwidth = "single",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
vim.g.mapleader = " "

-- 選択箇所の表示
vim.opt.shortmess:append("c")

-- コマンドの無効化
vim.keymap.set("n", "<C-@>", "<Esc>")

-- xで削除した時ヤンクしないように
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("v", "x", '"_x')

-- 視覚的移動(いまいち)
vim.api.nvim_set_keymap('n', 'gj', 'gj<script>g', {})
vim.api.nvim_set_keymap('n', 'gk', 'gk<script>g', {})
vim.api.nvim_set_keymap('n', '<script>', 'gj<script>g', {noremap = true})
vim.api.nvim_set_keymap('n', '<script>', 'gk<script>g', {noremap = true})
vim.api.nvim_set_keymap('n', '<script>g', '<Nop>', {})
