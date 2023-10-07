local separator = { '"▏"', color = 'StatusLineNonText' }

return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'arkav/lualine-lsp-progress',
    'kyazdani42/nvim-web-devicons',
  },
  opts = {
    options = {
      section_separators = '',
      component_separators = '',
      globalstatus = true,
      theme = {
        normal = {
          a = 'StatusLine',
          b = 'StatusLine',
          c = 'StatusLine',
        },
      },
    },
    sections = {
      lualine_a = {
        'mode',
        separator,
      },
      lualine_b = {
        'branch',
        'diff',
        separator,
        function ()
          return '🖧  ' .. vim.pesc(tostring(#vim.tbl_keys(vim.lsp.buf_get_clients())) or '')
        end,
        { 'diagnostics', sources = { 'nvim_diagnostic' } },
        separator,
      },
      lualine_c = {
        'filename'
      },
      lualine_x = {
      },
      lualine_y = {
      },
      lualine_z = {
      },
    },
  },
}
