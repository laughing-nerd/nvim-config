local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = " "

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<Leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep> ") });

end)

keymap('n', '<M-1>', ':Lex 30<CR>', opts) -- Opens Lexplorer
keymap('n', '<C-l>', ":vsplit<CR>", opts) -- Splits a window vertically
keymap('n', '<C-k>', ":split<CR>", opts)	-- Splits a window horizontally

