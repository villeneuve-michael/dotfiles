-- Bootstrap Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Color Scheme
  { import = 'laradev.plugins.catppuccin' },

  -- Commenting support.
  { 'tpope/vim-commentary' },

   -- Add, change, and delete surrounding text.
  { 'tpope/vim-surround' },

  -- Add, change, and delete surrounding text.
  { 'tpope/vim-sleuth' },

   -- Allow plugin to enable repeating command
  { 'tpope/vim-repeat' },

   -- Allow plugin to enable repeating command
  { 'christoomey/vim-tmux-navigator' },

    -- Jump to the last location when opening a file.
  { 'farmergreg/vim-lastplace' },

    -- Enable * searching with visually selected text.
  { 'nelstrom/vim-visual-star-search' },

  -- Automatically create parent dirs when saving.
  { 'jessarcher/vim-heritage' },

  -- Text objects for HTML attributes.
  { 'whatyouhide/vim-textobj-xmlattr', dependencies = 'kana/vim-textobj-user'  },

   -- Automatically set the working directory to the project root.
  { import = 'laradev.plugins.vim-rooter' },

  -- Automatically add closing brackets, quotes, etc.
  { 'windwp/nvim-autopairs', config = true },

  -- Add smooth scrolling to avoid jarring jumps
  { 'karb94/neoscroll.nvim', config = true },

  -- Split arrays and methods onto multiple lines, or join them back up.
  { 'AndrewRadev/splitjoin.vim' },

  -- Automatically fix indentation when pasting code.
  { 'ku1ik/vim-pasta' },
  
  -- Fuzzy finder
  { import = 'laradev.plugins.telescope' },

  -- File tree sidebar
  { import = 'laradev.plugins.nvim-tree' },

  -- All closing buffers without closing the split window.
  { import = 'laradev.plugins.bufdelete' },

  -- Improved syntax highlighting
  { 'nvim-treesitter/nvim-treesitter' },

    -- A Status line.
  { import = 'laradev.plugins.lualine' },

  -- Display buffers as tabs.
  { import = 'laradev.plugins.bufferline' },

  -- Display a custom dashboard
  { import = 'laradev.plugins.dashboard-nvim' },

    -- Git integration.
  { import = 'laradev.plugins.gitsigns' },

  -- Git commands.
  { 'tpope/vim-fugitive', dependencies = 'tpope/vim-rhubarb' },
})

vim.cmd [[colorscheme catppuccin-macchiato]]