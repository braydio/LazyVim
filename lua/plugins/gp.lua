return {
  'Robitx/gp.nvim',
  config = function()
    require('gp').setup {
      openai_api_key = os.getenv 'OPENAI_API_KEY',
      agents = {
        {
          name = 'GPT-4o',
          chat = true,
          completion = true,
          params = {
            model = 'gpt-4o',
            temperature = 0.2,
            top_p = 1,
          },
        },
        {
          name = 'GPT-4o Mini',
          chat = true,
          completion = true,
          params = {
            model = 'gpt-4o-mini',
            temperature = 0.3,
            top_p = 1,
          },
        },
        {
          name = 'GPT-3.5 Turbo',
          chat = true,
          completion = true,
          params = {
            model = 'gpt-3.5-turbo',
            temperature = 0.5,
            top_p = 1,
          },
        },
      },
      providers = {
        openai = {
          api_key = os.getenv 'OPENAI_API_KEY',
        },
      },
      cmd_prefix = ' :',
      curl_params = {
        timeout = 300,
      },
      log_file = vim.fn.stdpath 'data' .. '/gp.log',
      ui = {
        chat_window = {
          style = 'float',
          border = 'rounded',
          width = 0.8,
          height = 0.8,
        },
      },
    }
  end,
}
