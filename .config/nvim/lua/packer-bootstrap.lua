local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'tpope/vim-fugitive'
  use 'tpope/vim-eunuch'
  use 'tpope/vim-surround'
  use 'tpope/vim-sensible'

  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'nvim-tree/nvim-web-devicons'

  use({
    "hrsh7th/nvim-cmp",
    requires = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-cmdline" },
    },
  })
  use({
    "scalameta/nvim-metals",
    requires = {
    "nvim-lua/plenary.nvim",
    "mfussenegger/nvim-dap",
    },
  })
  use({
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  })

  use( {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  })

  use({"akinsho/toggleterm.nvim", tag = '*'})

  -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
  --use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
  use 'romgrk/barbar.nvim'

 -- use({'github/copilot.vim'})
  use { "zbirenbaum/copilot.lua" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
