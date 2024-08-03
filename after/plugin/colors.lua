local function ColorMyPencils(color)
  color = color or 'tokyonight'
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

  vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#82AAFF', bg = '#222436' })
  vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#82AAFF', bg = '#222436' })
end

ColorMyPencils()
