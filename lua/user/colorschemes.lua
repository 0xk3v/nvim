vim.cmd [[
try
  colorscheme tokyodark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

-- Theme Settings
local editor = vim.g
editor.airline_theme = 'google_dark'
