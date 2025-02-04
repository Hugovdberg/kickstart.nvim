return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local configs = require 'nvim-treesitter.configs'

    configs.setup {
      ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'python', 'query', 'elixir', 'heex', 'javascript', 'html' },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
      ignore_install = {},
      modules = {},
      context = { enable = true },
    }
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter-context',
  },
}
