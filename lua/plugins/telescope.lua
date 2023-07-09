local picker_layout = {
  prompt_position = "top",
  preview_cutoff = 10,
  preview_width = 0.5,
}

return {
  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        file_ignore_patterns = { ".ipynb", "node_modules", ".git" },
        path_display = { "smart" },
      },
      pickers = {
        find_files = {
          layout_config = picker_layout,
        },
        git_files = {
          layout_config = picker_layout,
        },
        live_grep = {
          layout_config = picker_layout,
        },
      },
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}
