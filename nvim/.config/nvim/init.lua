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
Plug('neovim/nvim-lspconfig')
Plug('williamboman/nvim-lsp-installer')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')
Plug('vim-scripts/DoxygenToolkit.vim')

-- colorschemes 
Plug('sainnhe/sonokai')
Plug('joshdick/onedark.vim') 
Plug('sainnhe/everforest') 

-- end of plugin list
vim.call('plug#end')

require('colors')
require('lsp_config')
require('nvim-autopairs').setup({
  enable_check_bracket_line = false
})
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "cpp", "markdown", "lua", "rust", "latex", "json", "python", "make", "cmake", "vim"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },

    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
