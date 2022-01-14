set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

" NEOVIM SPECIFIC SETTINGS
if has('nvim')

  call plug#begin('~/.vim/plugged')

  " Declare the list of plugins.
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'windwp/nvim-autopairs'

  " List ends here. Plugins become visible to Vim after this call.
  call plug#end()

lua << EOF

require('nvim-autopairs').setup({
  enable_check_bracket_line = false
}) 

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

endif

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0
