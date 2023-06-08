local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = " "

-- Telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

keymap('n', '<C-b>', ':NvimTreeToggle<CR>', opts) 	-- Opens NvimTree
keymap('n', '<C-l>', ":vsplit<CR>", opts) 					-- Splits a window vertically
keymap('n', '<C-k>', ":split<CR>", opts)						-- Splits a window horizontally
