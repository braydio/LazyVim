return {
  'Robitx/gp.nvim',
  config = function()
    require('gp').setup {
      openai_api_key = os.getenv 'OPENAI_API_KEY',

      system_prompt = 'You are a helpful assistant inside a code editor. Be concise and helpful for Brayden. Avoid verbose explanations unless asked.',

      chat = {
        window = {
          border = 'rounded',
          width = 0.8,
          height = 0.6,
        },
      },

      agents = {
        {
          name = 'GPT-4o Mini',
          chat = true,
          completion = true,
          params = {
            model = 'gpt-4o-mini',
            temperature = 0.2,
            top_p = 1,
          },
        },
        {
          name = 'GPT-4o',
          chat = true,
          completion = true,
          params = {
            model = 'gpt-4o',
            temperature = 0.4,
            top_p = 1,
          },
        },
        {
          name = 'GPT-3.5 Turbo',
          chat = true,
          completion = true,
          params = {
            model = 'gpt-3.5-turbo',
            temperature = 0.3,
            top_p = 1,
          },
        },
      },

      prompts = {
        {
          name = 'Refactor Code',
          desc = 'Refactor the selected code to improve readability or efficiency',
          mode = { 'v', 'n' },
          action = 'chat',
          prompt = 'Refactor this code. Improve naming, remove repetition, and simplify logic where possible.',
        },
        {
          name = 'Summarize File',
          desc = 'Generate a summary of the open file',
          mode = { 'n' },
          action = 'chat',
          prompt = 'Summarize the key functions and purpose of this file.',
        },
        {
          name = 'Generate Unit Tests',
          desc = 'Generate unit tests for the selected code block',
          mode = { 'v', 'n' },
          action = 'chat',
          prompt = 'Write a full set of unit tests for this code. Use best practices.',
        },
      },
    }
  end,
  cmd = { 'GpChatNew', 'GpChatResp', 'GpChatToggle', 'GpChatPaste' },
}
