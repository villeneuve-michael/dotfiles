return {
  'voldikss/vim-floaterm',
  keys = {
    { '<Leader>;', ':FloatermToggle<CR>' },
    { '<Leader>;', '<C-\\><C-n>:FloatermToggle<CR>', mode = 't' },
  },
  init = function()
    vim.g.floaterm_height = 0.25
    vim.g.floaterm_wintype = 'split'
  end,
  config = true,
}
