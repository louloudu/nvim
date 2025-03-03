-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Access system clipboard
vim.keymap.set({ "n", "v" }, "<A-y>", '"+y')
vim.keymap.set({ "n", "v" }, "<A-d>", '"+d')
vim.keymap.set({ "n", "v" }, "<A-p>", '"+p')
vim.keymap.set({ "n", "v" }, "<A-P>", '"+P')
vim.keymap.set({ "i", "c" }, "<A-p>", "<C-r>+")
vim.keymap.set("s", "<A-p>", "<BS>i<C-r>+")
vim.keymap.set("t", "<A-p>", '<C-\\><C-n>"+pi')

-- Use 'jk' to exit insert mode
vim.keymap.set("i", "jk", "<ESC>")

-- Return to the "Terminal NORMAL Mode"
vim.keymap.set("t", "<A-q>", "<C-\\><C-n>")

-- Alt+Up/Down move the current line up/down
vim.keymap.set({ "n", "v" }, "<M-Up>", ":m .-2<CR>==", { silent = true })
vim.keymap.set({ "n", "v" }, "<M-Down>", ":m .+1<CR>==", { silent = true })
vim.keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", { silent = true })
vim.keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { silent = true })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { silent = true })

-- Shift+Up/Down copy the current line up/down
vim.keymap.set({ "n", "v" }, "<S-Up>", ":t-1<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<S-Down>", ":t.<CR>", { silent = true })
vim.keymap.set("i", "<S-Up>", "<Esc>:t-1<CR>gi", { silent = true })
vim.keymap.set("i", "<S-Down>", "<Esc>:t.<CR>gi", { silent = true })
vim.keymap.set("v", "<S-Up>", ":t'<-1<CR>gv", { silent = true })
vim.keymap.set("v", "<S-Down>", ":t'><CR>gv", { silent = true })

-- Paste text on a new line above or below the current line
vim.keymap.set("n", "[p", "O<Esc>p", { desc = "Paste above" })
vim.keymap.set("n", "]p", "o<Esc>p", { desc = "Paste below" })

-- Theme Switching (themery.nvim)
vim.keymap.set("n", "<A-u>", ":Themery<CR>", { silent = true })
