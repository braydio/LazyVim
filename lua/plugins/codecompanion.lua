return {
  'olimorris/codecompanion.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    adapters = {
      openai = {
        api_key = os.getenv 'OPENAI_API_KEY',
        model = 'gpt-4o-mini', -- or whatever you want
      },
    },
    prompts = {
      -- Optional: customize behavior here later
    },
  },
  cmd = { 'CodeCompanion' }, -- lazy load
}
