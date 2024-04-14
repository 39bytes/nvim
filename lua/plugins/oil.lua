return {
  'stevearc/oil.nvim',
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {}
    vim.keymap.set('n', '<leader>oo', '<CMD>Oil<CR>', { desc = 'Open oil' })
    vim.keymap.set('n', '<leader>oc', function()
      require('oil').open(vim.fn.getcwd())
    end, { desc = 'Open oil in CWD' })
  end,
}
