-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local options = { silent = true, noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Trouble
map("n", "<leader>xx", "<cmd>TroubleToggle<cr>")
map("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>")
map("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>")
map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>")
map("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>")

-- TypescriptTools
map("n", "<leader>mi", "<cmd>TSToolsAddMissingImports<cr>")
map("n", "<leader>mo", "<cmd>TSToolsOrganizeImports<cr>")
map("n", "<leader>mr", "<cmd>TSToolsRenameFile<cr>")
map("n", "<leader>ri", "<cmd>TSToolsRemoveUnusedImports<cr>")
