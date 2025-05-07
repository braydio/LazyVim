-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ~/.config/nvim/lua/config/keymaps.lua
return {
  -- === File & Dev Navigation ===
  { '<leader>fx', '<cmd>Telescope find_files<CR>', desc = 'Find Files' },
  { '<leader>ld', '<cmd>Telescope diagnostics<CR>', desc = 'Diagnostics Telescope' },

  -- === LSP Tools ===
  { '<leader>lr', '<cmd>lua vim.lsp.buf.rename()<CR>', desc = 'Rename Symbol' },
  { '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>', desc = 'Code Action' },
  { '<leader>lf', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', desc = 'Format Buffer' },
  { '<leader>lh', '<cmd>lua vim.lsp.buf.hover()<CR>', desc = 'Hover Docs' },
  { '<leader>li', '<cmd>LspInfo<CR>', desc = 'LSP Info' },

  -- === Project Commands ===
  { '<leader>tr', ':!npm run dev<CR>', desc = 'Run Frontend' },
  { '<leader>tb', ':!npm run build<CR>', desc = 'Build Frontend' },

  -- === GPT Agent Switching ===
  {
    '<leader>ga',
    function()
      require('gp').select_agent 'GPT-4o'
    end,
    desc = 'Use GPT-4o',
  },
  {
    '<leader>gm',
    function()
      require('gp').select_agent 'GPT-4o Mini'
    end,
    desc = 'Use GPT-4o Mini',
  },
  {
    '<leader>g3',
    function()
      require('gp').select_agent 'GPT-3.5 Turbo'
    end,
    desc = 'Use GPT-3.5 Turbo',
  },

  -- === Gp.nvim Core Actions ===
  { '<leader>ai', '<cmd>GpChatNew<CR>', desc = 'Ask AI (gp.nvim)' },
  { '<leader>ar', '<cmd>GpChatResp<CR>', desc = 'GPT Respond Again' },
  { '<leader>at', '<cmd>GpChatToggle<CR>', desc = 'Toggle GPT Chat' },
  { '<leader>ap', '<cmd>GpChatPaste<CR>', desc = 'Paste GPT Output' },

  -- === Visual Mode AI ===
  { 'v', '<leader>ae', ":<C-u>'<,'>GpChatNew edit the selection<CR>", desc = 'Edit with GPT' },
  { 'v', '<leader>ar', ":<C-u>'<,'>GpChatNew rewrite to be simpler<CR>", desc = 'Rewrite Code' },
  { 'v', '<leader>ac', ":<C-u>'<,'>GpChatNew add concise comments<CR>", desc = 'Comment Code' },
}
