-- bootstrap lazy.nvim, LazyVim and your plugins

-- bootstrap lazy.nvim, LazyVim and your plugins

--  Load LSP crash patch BEFORE LazyVim loads anything
pcall(require, 'config.lsp_patch')

-- Now load LazyVim + your config
require 'config.lazy'
require 'config.diagnostics'
require 'config.keymaps'
require 'config.whichkey'
