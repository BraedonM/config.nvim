vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

-- [[ Setting options (`:help vim.opt` or `:help option-list`)]]
vim.opt.number = true -- Make line numbers default
vim.opt.relativenumber = true -- Enable relative line numbers
vim.opt.mouse = 'a' -- Enable mouse mode
vim.opt.showmode = false -- Don't show the mode, already in the status line
-- vim.opt.clipboard = 'unnamedplus' -- Sync Neovim with OS clipboard, kills startup time though
vim.opt.breakindent = true -- Enable break indent
vim.opt.undofile = true -- Save undo history
vim.opt.ignorecase = true -- Case-insensitive searching UNLESS \C or
vim.opt.smartcase = true -- 1+ capital letters in search term
vim.opt.signcolumn = 'yes' -- Keep signcolumn on by default
vim.opt.updatetime = 250 -- Update time
vim.opt.timeoutlen = 1000 -- Mapped sequence wait time (which-key)
vim.opt.splitright = true -- Configure how new splits should be opened
vim.opt.splitbelow = true -- ^
vim.opt.list = true -- Sets how neovim will display certain whitespace characters in the editor
vim.opt.listchars = { tab = '  ', trail = '·', nbsp = '␣' } --  ^ See `:help 'list'` and `:help 'listchars'`
vim.opt.inccommand = 'split' -- Preview substitutions live as you type
vim.opt.cursorline = true -- Show which line your cursor is on
vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor
vim.opt.wrap = false -- Don't wrap lines
vim.opt.colorcolumn = '80' -- Highlight column 80
-- This line was commented because it didn't let Harpoon work properly, since it cleared the Harpoon buffer on every file change
-- vim.opt.autochdir = true -- Change directory to the file in the current buffer
vim.opt.hlsearch = true -- Set highlight on search, but clear on pressing <Esc> in normal mode
