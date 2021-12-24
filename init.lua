
-- Importing Configurations

require('plugins')
require('nvim-config')
require('nvim-tree')
require('tree')
require('bufferline-config')
require('keymappings')
require('opts')
require('term-config')

-- Theme Settings
local editor = vim.g
editor.colors_name = 'tokyodark'
editor.airline_theme = 'google_dark'
