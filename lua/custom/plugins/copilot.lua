return {
  'zbirenbaum/copilot.lua', -- Github Copilot
  config = function()
    require('copilot').setup {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = '<Tab>',
        },
      },
      filetypes = {
        ['*'] = true,
      },
    }
  end,
}
