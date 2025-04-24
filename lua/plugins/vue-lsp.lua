-- ~/.config/nvim/lua/plugins/vue-lsp.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      volar = {
        -- `takeOverMode` gives you full support for JS/TS + Vue
        filetypes = {
          "typescript",
          "javascript",
          "javascriptreact",
          "typescriptreact",
          "vue",
          "json",
        },
        init_options = {
          vue = {
            hybridMode = false,
          },
        },
      },
    },
  },
}
