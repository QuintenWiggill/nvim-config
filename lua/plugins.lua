local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Essentials
  use 'wbthomason/packer.nvim'                     -- Package manager
  use 'nvim-lua/plenary.nvim'                      -- Common utilities
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'              -- Fuzzy finder
  use 'nvim-telescope/telescope-file-browser.nvim' -- File search and browser
  use 'nvim-tree/nvim-web-devicons'                -- File icons
  use 'nvim-tree/nvim-tree.lua'                    -- File and folder browser
  use 'ThePrimeagen/harpoon'                       -- Terminal management

  -- Looks
  use 'nvim-lualine/lualine.nvim'              -- Statusline
  use { 'catppuccin/nvim', as = 'catppuccin' } -- Theme
  use 'folke/tokyonight.nvim'                  -- Theme
  use {
    'nvim-treesitter/nvim-treesitter',         -- Syntax highlighting
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'norcalli/nvim-colorizer.lua' -- Color highlighter #fff
  use 'akinsho/nvim-bufferline.lua'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'goolord/alpha-nvim'

  -- LSP
  use 'hrsh7th/nvim-cmp'
  use({
    -- cmp LSP completion
    'hrsh7th/cmp-nvim-lsp',
    -- cmp Snippet completion
    'hrsh7th/cmp-vsnip',
    -- cmp Path completion
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-buffer',
    after = { 'hrsh7th/nvim-cmp' },
    requires = { 'hrsh7th/nvim-cmp' },
  })
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind-nvim'            -- vscode-like pictograms
  use 'simrat39/rust-tools.nvim'
  use 'neovim/nvim-lspconfig'           -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'folke/trouble.nvim'   -- Diagnostics

  -- Git
  use { 'sindrets/diffview.nvim' } -- Git diff UI
  use 'tpope/vim-fugitive'         -- Git util
  use 'lewis6991/gitsigns.nvim'    -- Visual git stuff

  -- Code editing
  use 'tpope/vim-surround'     -- Surround selections with quotes, brackets etc
  use 'L3MON4D3/LuaSnip'       -- Code snippets
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag' -- Auto tags for html, tsx etc
  use({
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn['mkdp#util#install']() end,
  })
  use 'folke/which-key.nvim'      -- Keybindings
  use 'zbirenbaum/copilot.lua'
  use 'AckslD/nvim-neoclip.lua'   -- Register clipboard manager
  use 'tpope/vim-dadbod'          -- DB
  use 'MunifTanjim/prettier.nvim' -- Prettier auto format
end)
