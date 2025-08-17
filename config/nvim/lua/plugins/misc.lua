-- Standalone plugins with less than 10 lines of config go here
return {
  {
    -- autoclose tags
    'windwp/nvim-ts-autotag',
  },
  {
    -- detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
  },
  {
    -- Powerful Git integration for Vim
    'tpope/vim-fugitive',
  },
  {
    -- GitHub integration for vim-fugitive
    'tpope/vim-rhubarb',
  },
  {
    -- Hints keybinds
    'folke/which-key.nvim',
    opts = {
      -- win = {
      --   border = {
      --     { '┌', 'FloatBorder' },
      --     { '─', 'FloatBorder' },
      --     { '┐', 'FloatBorder' },
      --     { '│', 'FloatBorder' },
      --     { '┘', 'FloatBorder' },
      --     { '─', 'FloatBorder' },
      --     { '└', 'FloatBorder' },
      --     { '│', 'FloatBorder' },
      --   },
      -- },
    },
  },
  {
    -- Highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    -- high-performance color highlighter
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
  -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
  {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    }
  },
  -- nvim v0.8.0
  {
      "kdheepak/lazygit.nvim",
      lazy = true,
      cmd = {
          "LazyGit",
          "LazyGitConfig",
          "LazyGitCurrentFile",
          "LazyGitFilter",
          "LazyGitFilterCurrentFile",
      },
      -- optional for floating window border decoration
      dependencies = {
          "nvim-lua/plenary.nvim",
      },
      -- setting the keybinding for LazyGit with 'keys' is recommended in
      -- order to load the plugin when the command is run for the first time
      keys = {
          { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
      }
  },
  {
      "olimorris/codecompanion.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
      },
      opts = {
        log_level = "DEBUG",
        "MeanderingProgrammer/render-markdown.nvim",
        ft = { "markdown", "codecompanion" },
        strategies = {
          chat = {
            adapter = "copilot",
            keymaps = {
              send = {
                modes = { n = "<C-s>", i = "<C-s>" },
                opts = {},
              },
              close = {
                modes = { n = "<C-c>", i = "<C-c>" },
                opts = {},
              },
            }
          },
          inline = {
            adapter = "copilot",
          },
          agent = {
            adapter = "copilot",
          },
          agent = {
            adapter = "copilot",
          },
        },
      },
      extensions = {
        mcphub = {
          callback = "mcphub.extensions.codecompanion",
          opts = {
            make_vars = true,
            make_slash_commands = true,
            show_result_in_chat = true
          }
        }
      },
    },
    {
      "echasnovski/mini.diff",
      config = function()
        local diff = require("mini.diff")
        diff.setup({
         -- Disabled by default
         source = diff.gen_source.none(),
        })
      end,
    },
  -- {
    -- All the LazyExtras go here 
    -- { import = "lazyvim.plugins.extras.ui.mini-starter" },
    -- { import = "lazyvim.plugins.extras.lang.go" },
    -- { import = "lazyvim.plugins.extras.lang.rust" },
    -- { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
  -- }
}
