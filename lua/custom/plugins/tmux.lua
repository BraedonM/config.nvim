return { -- tmux
  'aserowy/tmux.nvim',
  config = function()
    require('tmux').setup {
      copy_sync = {
        enable = true,
        redirect_to_clipboard = true,
        redirect_to_paste = true,
      },
      navigation = {
        enable_default_keybindings = true,
      },
      resize = {
        enable_default_keybindings = true,
      },
    }
  end,
}
