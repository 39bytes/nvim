return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.sources, {
      require("null-ls").builtins.formatting.ruff,
      -- require("null-ls").builtins.formatting.prettier,
      -- require("null-ls").builtins.formatting.ocamlformat,
    })
  end,
}
