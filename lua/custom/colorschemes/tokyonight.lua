return {
  'folke/tokyonight.nvim', -- tokyonight
  init = function()
    vim.cmd.hi 'Comment gui=none' -- Configure highlights
  end,
}
