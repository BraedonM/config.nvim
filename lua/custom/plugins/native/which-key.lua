return {
  -- 'VimEnter' loads which-key before all the UI elements are loaded.
  -- Events can be normal autocommands events (`:help autocmd-events`).
  -- Use the `dependencies` key to specify the dependencies of a particular plugin
  --   'folke/which-key.nvim', -- Useful plugin to show you pending keybinds.
  --   event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  --   config = function() -- This is the function that runs, AFTER loading
  --     require('which-key').setup()
  --
  --     -- Document existing key chains
  --     require('which-key').register {
  --       ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
  --       ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
  --       ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
  --       ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
  --       ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
  --       ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
  --       ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
  --     }
  --     -- Visual mode
  --     require('which-key').register({
  --       ['<leader>h'] = { 'Git [H]unk' },
  --     }, { mode = 'v' })
  --   end,
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      '<leader>?',
      function()
        require('which-key').show { global = false }
      end,
      desc = 'Buffer Local Keymaps (which-key)',
    },
  },
}
