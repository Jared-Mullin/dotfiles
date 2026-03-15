return {
  'saghen/blink.cmp',
  version = '1.*',
  dependencies = { 'rafamadriz/friendly-snippets' },
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = 'enter' },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = { documentation = { auto_show = true, auto_show_delay_ms = 200, } },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer', 'lazydev' },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        },
      }
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
