return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "astro",
      "bash",
      "haskell",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "ocaml",
      "python",
      "query",
      "regex",
      "rust",
      "tsx",
      "typescript",
      "vim",
      "yaml",
    },
    autotag = { enable = true, enable_close_on_slash = false },
    disable = function(lang, bufnr)
      return vim.api.nvim_buf_line_count(bufnr) > 10000
    end,
  },
}
