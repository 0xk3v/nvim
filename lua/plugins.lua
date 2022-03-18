local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require("packer").startup(function()
  -- Packer can manage itself
  use({ "wbthomason/packer.nvim", opt = true })

  -- Themes
  use("drewtempelmeyer/palenight.vim")
  use("kadekillary/skull-vim")
  use("tiagovla/tokyodark.nvim")
  use("folke/tokyonight.nvim")

  -- Nvim Tree Lua
  use({
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("nvim-tree").setup({})
    end,
  })

  -- BufferLine
  use({ "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" })

  -- Impatient
  use("lewis6991/impatient.nvim")

  -- Indentation Manager
  use("lukas-reineke/indent-blankline.nvim")

  use({ "prettier/vim-prettier", run = "yarn install" })
  use("9mm/vim-closer")

  -- Snippets
  use("honza/vim-snippets")
  use("rafamadriz/friendly-snippets")

  -- Formatting
  use("mhartington/formatter.nvim")

  -- AirLine

  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
  })
  -- use("vim-airline/vim-airline")
  -- use("vim-airline/vim-airline-themes")
  use("ryanoasis/vim-devicons")
  use("kyazdani42/nvim-web-devicons")

  -- Javascript Support

  use("pangloss/vim-javascript")
  use("jelera/vim-javascript-syntax")
  use("leafgarland/typescript-vim")
  use("peitalin/vim-jsx-typescript")
  use("mxw/vim-jsx")
  use({ "styled-components/vim-styled-components", branch = "main" })
  use("jparise/vim-graphql")
  use("othree/yajs.vim")
  use({ "autozimu/LanguageClient-neovim", branch = "next", run = "bash install.sh" })
  use("dense-analysis/ale")
  use("vim-syntastic/syntastic")
  use("maxmellon/vim-jsx-pretty")
  use("chemzqm/vim-jsx-improve")

  -- HTML & CSS Support

  use("othree/html5.vim")
  use("cakebaker/scss-syntax.vim")
  use("mattn/emmet-vim")
  use("hail2u/vim-css3-syntax")
  use("gko/vim-coloresque")
  use("AndrewRadev/tagalong.vim")

  -- COC Support

  use({ "neoclide/coc.nvim", branch = "release" })

  -- Python Support

  use({ "python-mode/python-mode", branch = "develop" })
  use("sheerun/vim-polyglot")
  use("vim-scripts/indentpython.vim")
  use("vim-python/python-syntax")

  -- Cool Plugins

  use("jiangmiao/auto-pairs")
  use("tpope/vim-commentary")
  use("Shougo/deoplete.nvim")

  -- Terminal Support
  use({ "akinsho/toggleterm.nvim" })
  use("airblade/vim-rooter")

  -- C# Support

  use("OmniSharp/omnisharp-vim")
  use({
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use("glepnir/dashboard-nvim")

  -- Git Support
  use({
    "lewis6991/gitsigns.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
    -- tag = 'release' -- To use the latest release
  })

  use("famiu/bufdelete.nvim")

  -- Scrollbar Support
  use({ "kevinhwang91/nvim-hlslens" })
  use("petertriho/nvim-scrollbar")

  -- TreeSitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })
end)
