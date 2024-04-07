filetype plugin indent on

augroup FileTypeSetting
    autocmd BufNewFile,BufRead Vagrantfile setlocal filetype=ruby
augroup END

augroup FileTypeIndent
    autocmd BufNewFile,BufRead *.py   setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.go   setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
    autocmd BufNewFile,BufRead *.c    setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.yml  setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.js   setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.jsx  setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.ts   setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.tsx  setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.tsx  setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *stories.tsx  setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.css  setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead Dockefile.*  setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.md  setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

augroup Myhighlight
    autocmd VimEnter,Colorscheme * highlight Normal ctermbg=none guibg=NONE
    autocmd VimEnter,Colorscheme * highlight NonText ctermbg=none guibg=NONE
    autocmd VimEnter,Colorscheme * highlight LineNr ctermbg=none guibg=NONE
    autocmd VimEnter,Colorscheme * highlight Search ctermbg=none guibg=NONE
    autocmd VimEnter,Colorscheme * highlight EndOfBuffer ctermbg=none guibg=NONE
augroup END
