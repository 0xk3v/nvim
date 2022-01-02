-- Importing Configurations
require('user.plugins')
require('user.nvim-tree-config')
require('user.bufferline-config')
require('user.keymappings')
require('user.opts')
require('user.term-config')
require('user.git-config')
require('user.indent-config')
require('user.dash-config')
require('user.cmp')
require('user.lsp')

-- Theme Settings
local editor = vim.g
editor.colors_name = 'tokyodark'
editor.airline_theme = 'google_dark'
