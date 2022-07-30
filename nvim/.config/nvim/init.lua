-- source my .vimrc config (basic setup)
vim.cmd('source ~/.vimrc')

--
-- Setup Vim Plug 
-- 	https://dev.to/vonheikemen/neovim-using-vim-plug-in-lua-3oom
--
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
-- declare the list of plugins
Plug('nvim-treesitter/nvim-treesitter', {
    ['do'] = function()
        vim.call(':TSUpdate')
    end
    })
Plug('windwp/nvim-autopairs')
Plug('ludovicchabant/vim-gutentags')
--Plug('neovim/nvim-lspconfig')
--Plug('hrsh7th/cmp-nvim-lsp')
--Plug('hrsh7th/cmp-buffer')
--Plug('hrsh7th/nvim-cmp')
-- end of plugin list
vim.call('plug#end')

--require('lsp_config')
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

