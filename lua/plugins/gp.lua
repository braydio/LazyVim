return {
  'Robitx/gp.nvim',
  event = 'VeryLazy',
  config = function()
    local gp = require 'gp'

    gp.setup {
      openai_api_key = os.getenv 'OPENAI_API_KEY',
      agents = {
        {
          name = 'ChatGPT',
          chat = true,
          completion = true,
          params = {
            model = 'gpt-4o',
            temperature = 0.2,
            top_p = 1,
          },
          system_prompt = 'You are a helpful coding assistant.',
        },
      },

      templates = {
        rewrite = {
          -- 🔍 Code Review Template
          ReviewCode = {
            prompt = [[
Please review the following code block. Identify any errors or corrections that should be implemented.

{{selection}}

Respond with the corrected code. Include *only* the corrected code in your response and nothing else.
            ]],
          },

          -- 🛠 Refactor Template
          RefactorCode = {
            prompt = [[
Refactor the following code to improve readability, performance, and maintainability. Keep behavior the same.

{{selection}}

Return only the refactored code.
            ]],
          },

          -- 🧠 Explain Template
          ExplainCode = {
            prompt = [[
Explain what the following code does, line by line.

{{selection}}

Write the explanation in plain English for someone new to this language.
            ]],
          },

          -- 💬 Comment Template
          CommentCode = {
            prompt = [[
Add helpful comments to the following code to clarify its purpose.

{{selection}}

Return only the updated code with comments.
            ]],
          },

          -- 🏷 Add Type Annotations
          AddTypes = {
            prompt = [[
Add appropriate type annotations to the following code, based on standard typing practices for the language.

{{selection}}

Return only the updated code.
            ]],
          },
        },
      },
    }

    -- Keymaps for each template
    vim.keymap.set(
      'v',
      '<leader>gr',
      ':<C-u>GpRewrite ReviewCode<CR>',
      { noremap = true, silent = true, desc = '🧪 Review and fix code' }
    )
    vim.keymap.set(
      'v',
      '<leader>gf',
      ':<C-u>GpRewrite RefactorCode<CR>',
      { noremap = true, silent = true, desc = '🛠 Refactor code' }
    )
    vim.keymap.set(
      'v',
      '<leader>ge',
      ':<C-u>GpRewrite ExplainCode<CR>',
      { noremap = true, silent = true, desc = '🧠 Explain code' }
    )
    vim.keymap.set(
      'v',
      '<leader>gc',
      ':<C-u>GpRewrite CommentCode<CR>',
      { noremap = true, silent = true, desc = '💬 Add comments' }
    )
    vim.keymap.set(
      'v',
      '<leader>gt',
      ':<C-u>GpRewrite AddTypes<CR>',
      { noremap = true, silent = true, desc = '🏷 Add type annotations' }
    )
  end,
}
