-- bootstrap lazy.nvim, LazyVim and your plugins
vim.opt.shell = "/bin/zsh"
vim.opt.colorcolumn = "80"
require("config.lazy")
require("lspconfig").ocamllsp.setup({})

vim.lsp.buf.format({
  filter = function(client)
    return client.name ~= "tsserver"
  end,
})
