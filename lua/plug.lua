-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

--require('packer').startup(function(use)
 -- use 'martinsione/darkplus.nvim'
--end)

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
--Plug('martinsione/darkplus.nvim')
--Plug('Mofiqul/vscode.nvim')
--Plug('catppuccin/nvim', { ['as'] = 'catppuccin'})

--Plug('zbirenbaum/copilot.lua')
--[[
-- Shorthand notation for GitHub; translates to https://github.com/junegunn/vim-easy-align
Plug('junegunn/vim-easy-align')

-- Any valid git URL is allowed
Plug('https://github.com/junegunn/seoul256.vim.git')

-- Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug('fatih/vim-go', { ['tag'] = '*' })

-- Using a non-default branch
Plug('neoclide/coc.nvim', { ['branch'] = 'release' })

-- Use 'dir' option to install plugin in a non-default directory
Plug('junegunn/fzf', { ['dir'] = '~/.fzf' })

-- Post-update hook: run a shell command after installing or updating the plugin
Plug('junegunn/fzf', { ['dir'] = '~/.fzf', ['do'] = './install --all' })

-- Post-update hook can be a lambda expression
Plug('junegunn/fzf', { ['do'] = function()
  vim.fn['fzf#install']()
end })

-- If the vim plugin is in a subdirectory, use 'rtp' option to specify its path
Plug('nsf/gocode', { ['rtp'] = 'vim' })

-- On-demand loading: loaded when the specified command is executed
Plug('preservim/nerdtree', { ['on'] = 'NERDTreeToggle' })

-- On-demand loading: loaded when a file with a specific file type is opened
Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })

-- Unmanaged plugin (manually installed and updated)
Plug('~/my-prototype-plugin')
--]]
vim.call('plug#end')