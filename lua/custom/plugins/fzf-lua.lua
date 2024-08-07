return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons', { 'junegunn/fzf', build = './install --bin' } },
  config = function()
    -- calling `setup` is optional for customization
    require('fzf-lua').setup {
      'telescope',
      defaults = {
        header = false,
      },
      winopts = {
        backdrop = 100,
      },
    }

    vim.keymap.set('n', '<leader>sf', require('fzf-lua').files, { desc = '[S]earch [F]iles (Fzf)' })
  end,
}
