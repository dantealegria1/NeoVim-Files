vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)

  --NO BORRAR-----------------------------
  -- packer can manage itself
  use("wbthomason/packer.nvim")
  --Varias extensiones usan esta extension
  use("nvim-lua/plenary.nvim")
  
  --IMPORTANTES--------------------------------------
  -- Colorscheme
  use { 'embark-theme/vim', as = 'embark' }
  use 'Mofiqul/dracula.nvim'
  use { "ellisonleao/gruvbox.nvim" }
  use 'folke/tokyonight.nvim'
  use({
  "neanias/everforest-nvim",
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("everforest").setup()
  end,
})
  -- Comentarios
  use("numToStr/Comment.nvim")
  -- file explorer
  use("nvim-tree/nvim-tree.lua")
  -- vs-code like icons
  use("nvim-tree/nvim-web-devicons")
  -- statusline
  use("nvim-lualine/lualine.nvim") 
  -- fuzzy finding w/ telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder
  -- autocompletion
  use("hrsh7th/nvim-cmp") -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths
  -- snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets
  -- managing & installing lsp servers, linters & formatters
  use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
  use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig
  -- configuring lsp servers
  use("neovim/nvim-lspconfig") -- easily configure language servers
  use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
 use('nvim-treesitter/nvim-treesitter') 
  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side
  use('github/copilot.vim')
  use('bluz71/vim-nightfly-colors')
  --floating terminal
  use 'numToStr/FTerm.nvim'
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}
if packer_bootstrap then
    require("packer").sync()
  end
end)
