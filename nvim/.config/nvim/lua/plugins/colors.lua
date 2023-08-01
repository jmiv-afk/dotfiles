return {
  -- Colorscheme
  'sainnhe/sonokai',
  priority = 1000,
  config = function()
    vim.cmd [[
      set background=dark
      let g:sonokai_transparent_background=2
      colorscheme sonokai
    ]]
  end,
}
