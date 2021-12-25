-- Importing Configurations

require('plugins')
require('nvim-tree-config')
require('bufferline-config')
require('keymappings')
require('opts')
require('term-config')
require('git-config')
-- require('indent-config')
require('dash-config')

-- Theme Settings
local editor = vim.g
editor.colors_name = 'tokyodark'
editor.airline_theme = 'google_dark'
