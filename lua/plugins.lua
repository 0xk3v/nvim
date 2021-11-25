local execute = vim.api.nvim_command
local fn = vim.fn

--local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--[[
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end
--]]

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function()
  -- Packer can manage itself
  use {'wbthomason/packer.nvim', opt = true}

  -- Main Theme
  use 'drewtempelmeyer/palenight.vim'
  
  -- Nvim Tree Lua 
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }
  
  -- BarBar
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  use 'nvim-treesitter/nvim-treesitter'
  
  use {'prettier/vim-prettier', run = 'yarn install' }
  
  use '9mm/vim-closer'
  use 'tpope/vim-commentary'
  use 'honza/vim-snippets'
  
  -- AirLine 
  
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'

  -- Javascript Support

  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'peitalin/vim-jsx-typescript'
  use  {'styled-components/vim-styled-components', branch = 'main'}
  use 'jparise/vim-graphql' 

  -- COC Support
  
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Python Support

  use 'numirias/semshi'
  use {'python-mode/python-mode',  branch = 'develop' }
  use 'sheerun/vim-polyglot'
  use 'vim-scripts/indentpython.vim'


  -- Terminal Support

  use 'kassio/neoterm'

end)

