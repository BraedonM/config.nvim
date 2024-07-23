-- [[ Basic Keymaps (`:help vim.keymap.set()`)]]
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' }) -- Exit terminal
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- Personal added keymaps
vim.keymap.set('n', '<leader>o', '<cmd>Oil<CR>', { desc = 'Open [O]il file explorer' }) -- Open oil file explorer
vim.keymap.set('n', '<leader>mp', '<cmd>MarkdownPreview<CR>', { desc = 'Open [M]arkdown [P]review' }) -- Open markdown preview
vim.keymap.set('n', '<A-,>', ':m .+1<CR>==') -- move line up(n)
vim.keymap.set('n', '<A-m>', ':m .-2<CR>==') -- move line down(n)
vim.keymap.set('v', '<A-,>', ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set('v', '<A-m>', ":m '<-2<CR>gv=gv") -- move line down(v)
vim.keymap.set('n', '<bs>', '<C-^>') -- Switch between last two buffers
