
-- Language Linting


local set = vim.opt

set.showmode = false
set.showtabline = 2
set.mouse = 'a'
set.termguicolors = true
set.tabstop = 4
set.softtabstop = 4
set.splitbelow = true
set.splitright = true
vim.wo.number = true
vim.o.background = 'dark'
vim.cmd 'set cursorline'
vim.g.python_highlight_all = true

-- ESLint Configs

vim.cmd "let b:ale_fixers = {'javascript': ['prettier', 'eslint']}"

-- Ultisnips Configs

vim.cmd 'let g:UltiSnipsExpandTrigger="<tab>"'
vim.cmd 'let g:UltiSnipsJumpForwardTrigger="<c-b>"'
vim.cmd 'let g:UltiSnipsJumpBackwardTrigger="<c-z>"'

-- Setting Gui Colors

vim.opt.termguicolors = true

