vim.cmd.packadd "packer.nvim"

-- Install your plugins here
require("packer").startup(function()
    use {'wbthomason/packer.nvim'}
    -- 空白の協調表示
    use {'ntpeters/vim-better-whitespace',
     config = function()
         vim.g.better_whitespace_enabled = 1
         vim.g.strip_whitespace_on_save = 1
         vim.g.strip_whitespace_confirm = 0
         vim.g.strip_max_file_size = 100
     end,}
    -- gitの差分表示
    use {'airblade/vim-gitgutter',
     keys = {'a','i'},
     config = function()
         vim.cmd [[
             highlight GitGutterAdd       guifg=#009900 ctermfg=2
             highlight GitGutterChange    guifg=#bbbb00 ctermfg=3
             highlight GitGutterDelete    guifg=#ff2222 ctermfg=1
             highlight GitGutterAddLine     ctermfg=2
             highlight GitGutterChangeLine  ctermfg=3
             highlight GitGutterDeleteLine  ctermfg=1
         ]]
     end,}
    -- 選択範囲を画像にできる
    use {'segeljakt/vim-silicon',
     event = {'ModeChanged'}}
    -- ステータスバー
    use {'nvim-lualine/lualine.nvim',
     config = function()
  	  require('lualine').setup {
              options = {
                globalstatus = true,
                icons_enabled = true,
                theme = 'auto',
                component_separators = { left = '|', right = '|'},
                section_separators = {},
                disabled_filetypes = {
                  statusline = {},
                  winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                refresh = {
                  statusline = 1000,
                  tabline = 1000,
                  winbar = 1000,
                }
              },
              sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
              },
              inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
              },
              tabline = {},
              winbar = {},
              inactive_winbar = {},
              extensions = {}
    	 }
     end,}
    -- サイドバー
    use {'sidebar-nvim/sidebar.nvim',
     keys = {'<C-s>'},
     config = function()
         vim.api.nvim_set_keymap('n', '<C-s>', ':SidebarNvimToggle<CR>', { noremap = true, silent = true })
     end,}
    -- lsp
    -- use {'neoclide/coc.nvim', commit = "release"}
    -- mdプレビュー
    use {'kannokanno/previm',
     ft = {'markdown'}}
    -- コメントアウト
    use {'tpope/vim-commentary',
     keys = {'gc', 'gcc'}}
    -- 括弧の自動補完
    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }
    use {'machakann/vim-sandwich',
     keys = {'sa'}}
    -- htmlタグ補完ctrl+y ,
    use {'mattn/emmet-vim',
     ft = {'html', 'css', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact'}}
    -- ファイラ
    use {'nvim-telescope/telescope.nvim', tag = '0.1.5',
     keys = {'<C-e>', '<C-g>'},
     requires = {
         {'nvim-lua/plenary.nvim', opt = true},
         {'nvim-telescope/telescope-frecency.nvim', opt = true},
     },
     wants = {'plenary.nvim', 'telescope-frecency.nvim' },
     config = function()
         require("telescope").load_extension "frecency"
         vim.api.nvim_set_keymap('n', '<C-e>', '<cmd>Telescope find_files<cr>', {noremap = true, silent = true})
         vim.api.nvim_set_keymap('n', '<C-g>', '<cmd>Telescope live_grep<cr>', {noremap = true, silent = true})
     end
    }
    -- カラースキーム
    use {'ellisonleao/gruvbox.nvim',
        config = function()
            require('gruvbox').setup{
                overrides = {
                    MatchParen = { bg = '#fabd2f', bold = true },
                }
            }
            vim.cmd [[ colorscheme gruvbox ]]
        end,}
    -- CSVをみやすく
    use {'mechatroner/rainbow_csv',
     ft = {'csv'}}
    -- lsp
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/vim-vsnip'}
    -- ハイライト
    -- use {'nvim-treesitter/nvim-treesitter',
    --  config = function()
    --      require('nvim-treesitter.configs').setup {
    --        sync_install = false,
    --        auto_install = true,
    --        highlight = {
    --          enable = true,
    --          additional_vim_regex_highlighting = false,
    --        },
    --        indent = {
    --          enable = false,
    --        }
    --      }
    --  end,}
    -- 自動保管
    -- use {'hrsh7th/nvim-cmp',
    --  module = {"cmp"},
    --  require = {
    --    {'hrsh7th/cmp-nvim-lsp'},
    --    {'saadparwaiz1/cmp_luasnip'},
    --    {'L3MON4D3/LuaSnip'},
    --    {'hrsh7th/cmp-buffer'},
    --    {'hrsh7th/cmp-path'},
    --    {'hrsh7th/cmp-cmdline'},
    --    {'hrsh7th/cmp-calc'},
    --    {'hrsh7th/cmp-nvim-lsp-signature-help'},
    --    {'hrsh7th/cmp-nvim-lsp-document-symbol'},
    --    {'hrsh7th/cmp-nvim-lsp'},
    --    {'onsails/lspkind.nvim'},
    --  },
    --  wants = {'cmp-nvim-lsp', 'cmp-buffer', 'cmp-path', 'cmp-cmdline', 'cmp-calc', 'cmp-nvim-lsp-signature-help', 'cmp-nvim-lsp-document-symbol', 'cmp-nvim-lsp', 'lspkind.nvim'},
    --  config = function()
    --      vim.keymap.set('n', 'K',  '<cmd>lua vim.lsp.buf.hover()<CR>')
    --      vim.keymap.set('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>')
    --      vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
    --      vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
    --      vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
    --      vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
    --      vim.keymap.set('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
    --      vim.keymap.set('n', 'gn', '<cmd>lua vim.lsp.buf.rename()<CR>')
    --      vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
    --      vim.keymap.set('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>')
    --      vim.keymap.set('n', 'g]', '<cmd>lua vim.diagnostic.goto_next()<CR>')
    --      vim.keymap.set('n', 'g[', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
    --      vim.cmd [[
    --          highlight LspReferenceText  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
    --          highlight LspReferenceRead  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
    --          highlight LspReferenceWrite cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
    --      augroup lsp_document_highlight
    --      ]]
    --      vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    --        vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
    --      )
    --      require("nvim-cmp").setup {
    --       sources = {
    --         { name = "nvim_lsp" },
    --         { name = "luasnip" },
    --         { name = "buffer" },
    --       },
    --       mapping = cmp.mapping.preset.insert({
    --         ["<C-p>"] = cmp.mapping.select_prev_item(),
    --         ["<C-n>"] = cmp.mapping.select_next_item(),
    --         ['<C-l>'] = cmp.mapping.complete(),
    --         ['<C-e>'] = cmp.mapping.abort(),
    --         ["<CR>"] = cmp.mapping.confirm { select = true },
    --       }),
    --       experimental = {
    --         ghost_text = true,
    --       }
    --      }
    --  end,}

    -- use {'williamboman/mason.nvim',
    --   config = function()
    --     require("mason").setup()
    --  end,}
    -- use {'williamboman/mason-lspconfig.nvim',
    --   config = function()
    --     require("mason-lspconfig").setup()
    --       ensure_installed = {
    --                   "lua_ls",
    --                   "bashls",
    --                   "dockerls",
    --                   "docker_compose_language_service",
    --                   "gopls",
    --                   "html",
    --                   "jsonls",
    --                   "tsserver",
    --                   "marksman",
    --                   "nimls",
    --                   "pylsp",
    --           }
    --  end,}
    -- use {'neovim/nvim-lspconfig'}
    -- 補完機能
    -- use {'neoclide/coc.vim',
    --   config = function()
    --     require("coc.vim").setup()
    -- end,}

    -- formatter
    use {'prettier/vim-prettier',
     ft = {'html', 'css', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact'}}

end)

