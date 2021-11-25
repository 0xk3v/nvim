-- Importing Configurations

require('plugins')
require('nvim-tree')
require('barbar')
require('keymappings')

-- Basic Settings

local set = vim.opt
set.showmode = false
set.showtabline = 2
set.mouse = 'a'
set.termguicolors = true
set.tabstop = 4
set.softtabstop = 4

vim.wo.number = true
vim.o.background = 'dark'
vim.g.colors_name = 'palenight'


