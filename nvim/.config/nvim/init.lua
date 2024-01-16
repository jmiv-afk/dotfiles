require("jmiv.set")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)


require('lazy').setup("plugins")
require('config.harpoon')
require('config.telescope')
require('config.treesitter')
require('config.lspconfig')

-- 
require("jmiv.remap")
