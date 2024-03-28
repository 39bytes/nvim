return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      -- Conform will run multiple formatters sequentially
      python = { "isort", "ruff" },

      -- Use a sub-list to run only the first available formatter
      javascript = { { "prettierd" } },
      javascriptreact = { { "prettierd" } },
      typescript = { { "prettierd" } },
      typescriptreact = { { "prettierd" } },

      html = { { "prettier" } },

      astro = { { "prettierd" } },

      rust = { "rustfmt" },

      json = { "prettier" },
      toml = { "taplo" },

      markdown = { "prettier" },
    },
  },
}
