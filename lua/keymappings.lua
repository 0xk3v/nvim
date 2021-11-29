local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
vim.g.mapleader = ' '

map('n', '<Space>', '<NOP>', default_opts)
map('n', 'e', ':NvimTreeToggle<CR>', default_opts)

-- Splitting Panes

map('n', '<C-[>', ':vs<CR>', default_opts)
map('n', '<C-]>', ':sp<CR>', default_opts)
map('n', '<C-Q>', ':q<CR>', default_opts)

-- Moving around splits using Ctrl + {h,j,k,l}

map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- Splitting

---[[
vim.cmd 'nnoremap <C-J> <C-W><C-J>'
vim.cmd 'nnoremap <C-K> <C-W><C-K>'
vim.cmd 'nnoremap <C-L> <C-W><C-L>'
vim.cmd 'nnoremap <C-H> <C-W><C-H>'
--]]

vim.cmd 'source ~/.config/nvim/lua/coc-config.vim'

--[[
vim.api.nvim_set_keymap('n', '<C-t>', ':lua NTGlobal["terminal"]:toggle()<cr>', default_opts)
vim.api.nvim_set_keymap('n', '<leader>1', ':lua NTGlobal["terminal"]:open(1)<cr>', default_opts)
vim.api.nvim_set_keymap('n', '<leader>+', ':lua NTGlobal["window"]:change_height(2)<cr>', default_opts)
vim.api.nvim_set_keymap('n', '<leader>-', ':lua NTGlobal["window"]:change_height(-2)<cr>', default_opts)
--]]
terminal = require('nvim-terminal').DefaultTerminal;

local silent = { silent = true }

vim.api.nvim_set_keymap('n', '<C-t>', ':lua terminal:toggle()<cr>', silent)
vim.api.nvim_set_keymap('n', '<C-1>', ':lua terminal:open(1)<cr>', silent)
vim.api.nvim_set_keymap('n', '<C-2>', ':lua terminal:open(2)<cr>', silent)
vim.api.nvim_set_keymap('n', '<C-3>', ':lua terminal:open(3)<cr>', silent)
