
  "TobinPalmer/Tip.nvim",
  config = function()
    require("tip").setup({
      header = "💡 Dev Tip",
      position = "cmdline", -- "cmdline", "popup", or "notify"
      delay = 5000,
      tips = {
        "Use `:noh` to clear search highlights",
        "Use `gd` to go to definition",
        "Use `:lua =expr` to evaluate in place",
        "Run `:messages` to review past logs",
        "Call `vim.lsp.buf.hover()` for docs",
        "💡 Consider wrapping logger.debug in reusable helpers",
        "🔥 Use Telescope to find TODOs: `:Telescope grep_string search=TODO`"
      }
    })
  end,
  event = "VeryLazy"
}
