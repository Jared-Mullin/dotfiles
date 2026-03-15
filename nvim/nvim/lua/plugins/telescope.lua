return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope [f]ind [f]iles' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope [f]ind [g]rep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope [f]ind [b]uffers' })
    vim.keymap.set('n', '<leader>fp', function()
      builtin.find_files({ search_dirs = { "~/.config/nvim/" } })
    end, { desc = 'Telescope [f]ind config' })
  end
}
