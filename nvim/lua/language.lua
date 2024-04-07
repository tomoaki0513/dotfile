vim.cmd("filetype plugin indent on")

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"},{
    pattern = {"Vagrantfile"},
    command = "setlocal filetype=ruby",
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"},{
    pattern = {"*.py","*.go","*.c","*.yml","*.yaml","*.js","*stories.tsx","Dockefile.*"},
    command = "setlocal tabstop=4 softtabstop=4 shiftwidth=4",
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"},{
    pattern = {"*.yml","*.yaml","*.jsx","*.ts","*.tsx","*.html","*.css","*.md"},
    command = "setlocal tabstop=2 softtabstop=2 shiftwidth=2",
})


vim.cmd[[
    augroup Myhighlight
        autocmd VimEnter,Colorscheme * highlight Normal ctermbg=none guibg=NONE
        autocmd VimEnter,Colorscheme * highlight NonText ctermbg=none guibg=NONE
        autocmd VimEnter,Colorscheme * highlight LineNr ctermbg=none guibg=NONE
        autocmd VimEnter,Colorscheme * highlight Search ctermbg=none guibg=NONE
        autocmd VimEnter,Colorscheme * highlight EndOfBuffer ctermbg=none guibg=NONE
    augroup END
]]
