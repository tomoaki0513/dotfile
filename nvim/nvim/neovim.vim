" シンタックスハイライト
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {
      'ruby',
      'lua',
      'toml',
      'c_sharp',
      'vue',
    }
  }
}
EOF
