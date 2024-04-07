" GitGutter
highlight GitGutterAdd       guifg=#009900 ctermfg=2'
highlight GitGutterChange    guifg=#bbbb00 ctermfg=3'
highlight GitGutterDelete    guifg=#ff2222 ctermfg=1'
highlight GitGutterAddLine     ctermfg=2'
highlight GitGutterChangeLine  ctermfg=3'
highlight GitGutterDeleteLine  ctermfg=1'

" nerdtree
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" ale
let g:ale_sign_column_always = 1

" coc.nvim
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
    \pumvisible() ? "\<C-n>" :
    \<SID>check_back_space() ? "\<Tab>" :
    \ coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" previm
let g:previm_disable_default_css = 1
let g:previm_custom_css_path = '~/.config/nvim/markdown.css'

" 起動時にプラグインインストール
if filereadable(expand('~/.config/nvim/jetpack.vim'))
    source ~/.config/nvim/jetpack.vim
endif

" skkeleton
imap <C-j> <Plug>(skkeleton-toggle)
cmap <C-j> <Plug>(skkeleton-toggle)

call skkeleton#config({
\'eggLikeNewline':v:true
\})

call ddc#custom#patch_global('sources', ['skkeleton'])
call ddc#custom#patch_global('sourceOptions', {
    \   '_': {
    \     'matchers': ['matcher_head'],
    \     'sorters': ['sorter_rank']
    \   },
    \   'skkeleton': {
    \     'mark': 'skkeleton',
    \     'matchers': ['skkeleton'],
    \     'sorters': []
    \   },
    \ })
" ddc.vimの機能を有効にする
call ddc#enable()
