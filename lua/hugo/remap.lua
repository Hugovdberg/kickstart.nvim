vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local set = vim.keymap.set
set('n', '<leader>pv', vim.cmd.Ex)

-- [[ Basic Keymaps ]]
--  See `:help set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- Simplify resize splits
set('n', '<M-.>', '<C-w>5>', { desc = 'Move split right' })
set('n', '<M-,>', '<C-w>5<', { desc = 'Move split left' })
set('n', '<M-t>', '<C-w>+', { desc = 'Move split up (taller)' })
set('n', '<M-s>', '<C-w>-', { desc = 'Move split down (shorter)' })

-- Simplify rerun command
set('n', '<leader>.', '@:<CR>', { desc = 'Repeat last command' })
