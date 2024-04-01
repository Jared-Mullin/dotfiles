require('ui')
require('general')
---
-- Setup Lazy Plugin Manager for NVim
--- 
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
  -- lsp-zero and dependencies
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  --themes
  {"HoNamDuong/hybrid.nvim"},
})

-- Colorscheme
vim.cmd.colorscheme("hybrid")


-- Configuring LSPs.
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)


local lspconfig = require('lspconfig')

-- setup gopls with customizations.
lspconfig.gopls.setup{
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true, 
      gofumpt = true,
    },
  },
}

-- setup pylsp with customizations.
lspconfig.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pylint = true,
      },
    },
  },
}

-- setup rust_analyser with customizations
lspconfig.rust_analyzer.setup({})

-- Setup yamlls with defaults 
lspconfig.yamlls.setup{}

-- Auto Complete.
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {"*.py", "*.c", "*.go", "*.rs", "*.yaml"},
  callback = function()
    vim.lsp.buf.format()
  end,
})
