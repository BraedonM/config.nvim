return { -- Shows when commands could be more efficient
  'm4xshen/hardtime.nvim',
  dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
  opts = {
    max_time = 80,
    disable_mouse = false,
    restriction_mode = 'hint',
  },
}
