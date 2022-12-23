return require('packer').startup(function(use)
use 'wbthomason/pakcer.nvim'
use {"ellisonleao/gruvbox.nvim"}
use {"ellisonleao/glow.nvim"}

-- icons
use 'nvim-tree/nvim-web-devicons'
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
-- plugins related to lsp.
use { "williamboman/mason.nvim" }
use { "williamboman/mason-lspconfig.nvim"}
use { "neovim/nvim-lspconfig"}

-- plugins for debug
use{ 
    "mfussenegger/nvim-dap",
    "jayp0521/mason-nvim-dap.nvim",
}
use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

-- auto completing
-- neovim/nvim-lspconfig has already been installed.
--'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'

-- For vsnip users.
use 'hrsh7th/cmp-vsnip'
use 'hrsh7th/vim-vsnip'
use 'rafamadriz/friendly-snippets'

-- For luasnip users.
-- Plug 'L3MON4D3/LuaSnip'
-- Plug 'saadparwaiz1/cmp_luasnip'

-- For ultisnips users.
-- Plug 'SirVer/ultisnips'
-- Plug 'quangnguyen30192/cmp-nvim-ultisnips'

-- For snippy users.
-- 'dcampos/nvim-snippy'
-- 'dcampos/cmp-snippy'

-- lspkind :status line
use 'onsails/lspkind-nvim'
use({
  "NTBBloodbath/galaxyline.nvim",
  -- your statusline
  config = function()
    require("galaxyline.themes.spaceline")
  end,
  -- some optional icons
  requires = { "kyazdani42/nvim-web-devicons", opt = true }
})

use 'yamatsum/nvim-cursorline'
end)
