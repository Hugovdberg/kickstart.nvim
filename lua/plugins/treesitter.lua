return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.config', -- Sets main module to use for opts
  opts = {
    ensure_installed = { 'c', 'diff', 'elixir', 'heex', 'html', 'javascript', 'lua', 'markdown', 'markdown_inline', 'python', 'query', 'vim', 'vimdoc' },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
    auto_install = true,
    ignore_install = {},
    modules = {},
    context = { enable = true },
  },
  dependencies = {
    'nvim-treesitter/nvim-treesitter-context',
  },
}
