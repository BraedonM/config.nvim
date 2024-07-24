return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    -- Simple and easy statusline.
    --  You could remove this setup call if you don't like it,
    --  and try some other statusline plugin
    local statusline = require 'mini.statusline'
    -- set use_icons to true if you have a Nerd Font
    statusline.setup { use_icons = vim.g.have_nerd_font }

    -- You can configure sections in the statusline by overriding their
    -- default behavior. For example, here we set the section for
    -- cursor location to LINE:COLUMN
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end

    require('mini.starter').setup {
      -- Items to be displayed. Should be an array with the following elements:
      -- - Item: table with <action>, <name>, and <section> keys.
      -- - Function: should return one of these three categories.
      -- - Array: elements of these three types (i.e. item, array, function).
      -- If `nil` (default), default items will be used (see |mini.starter|).
      items = nil,

      -- Header to be displayed before items. Converted to single string via
      -- `tostring` (use `\n` to display several lines). If function, it is
      -- evaluated first. If `nil` (default), polite greeting will be used.
      -- ASCII provided by https://patorjk.com/software/taag/#p=testall&f=Roman&t=NEOVIM
      header = [[
d8b   db d88888b  .d88b.  db    db d888888b .88b  d88. 
888o  88 88'     .8P  Y8. 88    88   `88'   88'YbdP`88 
88V8o 88 88888b  88    88 Y8    8P    88    88  88  88 
88 V8o88 88      88    88 `8b  d8'    88    88  88  88 
88  V888 88.     `8b  d8'  `8bd8'    .88.   88  88  88 
VP   V8P Y88888P  `Y88P'     YP    Y888888P YP  YP  YP 

]],

      --  _   _        __      ___
      -- | \ | |       \ \    / (_)
      -- |  \| | ___  __\ \  / / _ _ __ ___
      -- | . ` |/ _ \/ _ \ \/ / | | '_ ` _ \
      -- | |\  |  __/ (_) \  /  | | | | | | |
      -- |_| \_|\___|\___/ \/   |_|_| |_| |_|
      --
      -- Footer to be displayed after items. Converted to single string via
      -- `tostring` (use `\n` to display several lines). If function, it is
      -- evaluated first. If `nil` (default), default usage help will be shown.
      footer = '',

      -- Array  of functions to be applied consecutively to initial content.
      -- Each function should take and return content for 'Starter' buffer (see
      -- |mini.starter| and |MiniStarter.content| for more details).
      content_hooks = nil,

      -- Characters to update query. Each character will have special buffer
      -- mapping overriding your global ones. Be careful to not add `:` as it
      -- allows you to go into command mode.
      query_updaters = 'abcdefghijklmnopqrstuvwxyz0123456789_-.',

      -- Whether to disable showing non-error feedback
      silent = false,
    }
  end,
}
