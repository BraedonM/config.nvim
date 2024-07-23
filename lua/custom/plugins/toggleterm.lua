return { -- Terminal window
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 100,
      open_mapping = [[<C-t>]],
      autochdir = true,
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = 'vertical',
      close_on_exit = true,
      shell = vim.o.shell,
    }
  end,
}
