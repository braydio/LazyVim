return {
  'Robitx/gp.nvim',
  config = function()
    require('gp').setup {
      openai_api_key = os.getenv 'OPENAI_API_KEY', -- reads your env var
      agents = {
        {
          name = 'ChatGPT',
          chat = true,
          completion = true,
          params = {
            model = 'gpt-4o', -- or "gpt-3.5-turbo" if you prefer
            temperature = 0.2,
            top_p = 1,
          },
        },
      },
    }
  end,
  cmd = { 'GpChatNew', 'GpChatRespond', 'GpChatToggle', 'GpChatPaste' }, -- lazy load on these commands
}
