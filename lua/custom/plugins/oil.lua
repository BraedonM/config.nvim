return {
  'stevearc/oil.nvim',
  config = function()
    local detail = false
    require('oil').setup {
      keymaps = {
        ['g?'] = 'actions.show_help',
        ['<CR>'] = 'actions.select',
        ['<C-v>'] = { 'actions.select', opts = { vertical = true } },
        ['<C-s>'] = { 'actions.select', opts = { horizontal = true } },
        ['<C-p>'] = 'actions.preview',
        ['<C-c>'] = 'actions.close',
        ['m'] = 'actions.refresh',
        ['<Del>'] = 'actions.parent',
        ['_'] = 'actions.open_cwd',
        ['`'] = 'actions.cd',
        ['~'] = { 'actions.cd', opts = { scope = 'tab' } },
        ['gs'] = 'actions.change_sort',
        ['gx'] = 'actions.open_external',
        ['g.'] = 'actions.toggle_hidden',
        ['g\\'] = 'actions.toggle_trash',
        ['gh'] = {
          desc = 'Toggle file detail view',
          callback = function()
            detail = not detail
            if detail then
              require('oil').set_columns { 'icon', 'permissions', 'size', 'mtime' }
            else
              require('oil').set_columns { 'icon' }
            end
          end,
        },
      },
      use_default_keymaps = false,
      watch_for_changes = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
      },
      columns = {
        'icon',
      },
    }
  end,
}
