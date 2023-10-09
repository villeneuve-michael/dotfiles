return {
  'adoy/vim-php-refactoring-toolbox',
  keys = {
    { '<Leader>rem', ':call PhpExtractMethod()<cr>', mode = 'v' },
    { '<Leader>rep', ':call PhpCreateProperty()<cr>', mode = 'v' },
    { '<Leader>rrm', ':call PhpRenameMethod()<cr>', mode = 'v' },
  },
  config = function()
    vim.g.vim_php_refactoring_default_method_visibility = 'protected'
  end,
}
