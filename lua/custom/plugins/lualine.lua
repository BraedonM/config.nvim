return {
  'nvim-lualine/lualine.nvim', -- Status line configuration
  requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'onedark', --'kanagawa',
      },
      sections = {
        lualine_a = { 'mode' }, -- Normal, Insert, Visual, etc.
        lualine_b = { 'branch', 'diff' }, -- Git branch, diff
        lualine_c = { 'vim.fn.expand("%:p")' }, -- Full path to the file
        lualine_x = { 'os.date("%I:%M %p")' }, -- Buffer list, current time
        lualine_y = { 'filetype', 'filesize' }, -- Current filetype
        lualine_z = { 'location' }, -- Line and column in the file
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = { 'filename' },
        lualine_c = {},
        lualine_x = { 'os.date("%I:%M %p")' },
        lualine_y = { 'filetype' },
        lualine_z = {},
      },
    }
  end,
}
