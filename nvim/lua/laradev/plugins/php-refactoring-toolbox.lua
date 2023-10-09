return {
  'adoy/vim-php-refactoring-toolbox',
  keys = {
    { '<Leader>rem', ':call PhpExtractMethod()', { silent = true } },
    { '<Leader>rep', ':call PhpCreateProperty()', { silent = true } },
    { '<Leader>rrm', ':call PhpRenameMethod()', { silent = true } },
  },
  config = function()
    vim.g.vim_php_refactoring_default_method_visibility = 'protected'
  end,
}
