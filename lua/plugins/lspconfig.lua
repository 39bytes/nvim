return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tsserver = {
        settings = {
          typescript = {
            preferences = {
              importModuleSpecifier = "non-relative",
            },
          },
          typescriptreact = {
            preferences = {
              importModuleSpecifier = "non-relative",
            },
          },
        },
      },
    },
    setup = {
      clangd = function(_, opts)
        opts.capabilities.offsetEncoding = { "utf-16 " }
      end,
      tsserver = function(_, opts)
        return true
      end,
    },
  },
}
