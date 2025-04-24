return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!

  opts = {
    provider = "openai", -- Use your local Qwen model for both planning and applying
    cursor_applying_provider = "openai",
    behaviour = {
      enable_cursor_planning_mode = false,
    },
    openai = {
      endpoint = "https://192.168.1.239:5051/v1",
      model = "mistral-7b-instruct",
      timeout = 30000,
      temperature = 0,
      max_tokens = 8192,
      reasoning_effort = "medium",
    },
  },

  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "echasnovski/mini.pick",
    "nvim-telescope/telescope.nvim",
    "hrsh7th/nvim-cmp",
    "ibhagwan/fzf-lua",
    "nvim-tree/nvim-web-devicons",
    "zbirenbaum/copilot.lua",
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          use_absolute_path = true,
        },
      },
    },
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
