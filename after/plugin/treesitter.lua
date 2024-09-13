vim.keymap.set('n', '[c', function()
  require('treesitter-context').go_to_context(vim.v.count1)
end, { silent = true, desc = 'Go to start of [c]ontext' })
-- vim.keymap.set('n', ']c', function()
--   require('treesitter-context').go_to_context(vim.v.count1)
-- end, { silent = true, desc = 'Go to start of [c]ontext' })

vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.o.foldenable = false

-- local callcount = 0
--
-- function UnfoldAll()
--   local print_debug = print
--   local linecount = vim.api.nvim_buf_line_count(0)
--   local ok, result = pcall(vim.cmd.foldopen, { bang = true, range = { 1, linecount } })
--   if ok then
--     callcount = callcount + 1
--     print_debug('Unfold ran ', callcount, 'times', result)
--   else
--     print_debug('Unfolding failed: ', result)
--   end
-- end
--
-- vim.api.nvim_create_autocmd('BufRead', {
--   group = vim.api.nvim_create_augroup('treesitter-folds', { clear = true }),
--   -- command = 'silent! :%foldopen!',
--   callback = UnfoldAll,
-- })
