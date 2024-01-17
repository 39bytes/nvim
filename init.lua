-- bootstrap lazy.nvim, LazyVim and your plugins
vim.opt.shell = "/bin/zsh"
vim.opt.colorcolumn = "80"
require("config.lazy")
require("lspconfig").ocamllsp.setup({})
require("typescript-tools").setup({
  settings = {
    tsserver_path = "/home/jeff/.local/share/pnpm/global/5/node_modules/typescript-language-server",
  },
})
