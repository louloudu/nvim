if true then
  return {}
end

-- Disable global arrow keys
vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>")
-- Enable arrow keys in the buffer for the telescope.nvim plugin
vim.api.nvim_create_autocmd("FileType", {
  pattern = "TelescopePrompt",
  callback = function()
    vim.keymap.set({ "n", "i" }, "<Left>", "<Left>", { buffer = true })
    vim.keymap.set({ "n", "i" }, "<Right>", "<Right>", { buffer = true })
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "TelescopeFindPre",
  callback = function()
    vim.keymap.set("i", "<Up>", "<Up>", { buffer = true })
    vim.keymap.set("i", "<Down>", "<Down>", { buffer = true })
  end,
})
-- Enable arrow keys in the buffer for the neo-tree.nvim plugin
vim.api.nvim_create_autocmd("FileType", {
  pattern = "neo-tree",
  callback = function()
    vim.keymap.set("n", "<Left>", "<Left>", { buffer = true })
    vim.keymap.set("n", "<Right>", "<Right>", { buffer = true })
    vim.keymap.set("n", "<Up>", "<Up>", { buffer = true })
    vim.keymap.set("n", "<Down>", "<Down>", { buffer = true })
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "neo-tree-popup",
  callback = function()
    vim.keymap.set({ "n", "i" }, "<Left>", "<Left>", { buffer = true })
    vim.keymap.set({ "n", "i" }, "<Right>", "<Right>", { buffer = true })
  end,
})
