vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true})
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', 'e', ':NvimTreeToggle<CR>', { noremap = true, silent = true})
