vim.g.mapleader = " "

-- File Explorer 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- UndoTree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
