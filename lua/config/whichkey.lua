-- ~/.config/nvim/lua/config/whichkey.lua

return {
  { '<leader>fx', '<cmd>Telescope find_files<CR>', desc = 'Find Files' },
  { '<leader>lr', '<cmd>lua vim.lsp.buf.rename()<CR>', desc = 'Rename Symbol' },
  { '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>', desc = 'Code Action' },
  { '<leader>ld', '<cmd>Telescope diagnostics<CR>', desc = 'Diagnostics Telescope' },
  { '<leader>lf', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', desc = 'Format Buffer' },
  { '<leader>lh', '<cmd>lua vim.lsp.buf.hover()<CR>', desc = 'Hover Docs' },
  { '<leader>li', '<cmd>LspInfo<CR>', desc = 'LSP Info' },
  { '<leader>tr', ':!npm run dev<CR>', desc = 'Run Frontend' },
  { '<leader>tb', ':!npm run build<CR>', desc = 'Build Frontend' },
}
