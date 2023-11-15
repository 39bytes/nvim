return {
  "nvimtools/none-ls.nvim",
  opts = {
    sources = {
      require("null-ls").builtins.formatting.prettierd,
    },
  },
}
