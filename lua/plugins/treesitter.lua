return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local configs = require 'nvim-treesitter.configs'

    configs.setup {
      ensure_installed = { 'c', 'diff', 'elixir', 'heex', 'html', 'javascript', 'lua', 'markdown', 'markdown_inline', 'python', 'query', 'vim', 'vimdoc' },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
      ignore_install = {},
      modules = {},
    }
  end,
}
