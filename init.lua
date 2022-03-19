-- Importing Configurations

require("plugins")
require("nvim-tree-config")
require("bufferline-config")
require("keymappings")
require("opts")
require("term-config")
require("git-config")
require("indent-config")
require("dash-config")
require("formatting")
require("scroll-config")
require("tree-sitter")
require("lualine-config")

-- Theme Settings
local editor = vim.g
editor.airline_theme = "google_dark"
vim.notify = require("notify")
