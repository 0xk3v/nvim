local execute = vim.api.nvim_command
local fn = vim.fn

-- local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
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
  use {'python-mode/python-mode',  branch = 'develop' }
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
  
  use {
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',
  }
  use 'hrsh7th/nvim-compe'

  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

end)

