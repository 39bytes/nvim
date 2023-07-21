return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "rust",
      "tsx",
      "typescript",
      "vim",
      "yaml",
    },
    autotag = { enable = true },
    disable = function(lang, bufnr)
      return vim.api.nvim_buf_line_count(bufnr) > 10000
    end,
  },
}
