-- Setup Lazy Plugin Manager for NVim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
local uv = vim.uv or vim.loop

-- Auto-install lazy.nvim if not already present
if not uv.fs_stat(lazypath) then
  print('Installing lazy.nvim....')
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
  print('Done.')
end

vim.opt.rtp:prepend(lazypath)

-- Plugins
require('lazy').setup({
  --themes
  {'HoNamDuong/hybrid.nvim'},
  -- lsp-zero and dependencies
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  -- nvim-telescope 
	{'nvim-telescope/telescope.nvim'},
	{'nvim-lua/plenary.nvim'},
	{'BurntSushi/ripgrep'},
	{'telescope-fzf-native.nvim'},
	-- treesitter
	{'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
})
