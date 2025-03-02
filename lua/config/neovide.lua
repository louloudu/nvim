if not vim.g.neovide then
  return
end

-- Ctrl+Shift+c/v for system clipboard
vim.keymap.set("v", "<C-S-C>", '"+y')
vim.keymap.set({ "i", "c" }, "<C-S-V>", "<C-r>+")
vim.keymap.set({ "n", "v" }, "<C-S-V>", '"+p')
vim.keymap.set("s", "<C-S-V>", "<BS>i<C-r>+")
vim.keymap.set("t", "<C-S-v>", '<C-\\><C-n>"+pi')

-- Font
vim.o.guifont = "Mononoki Nerd Font Mono,SauceCodePro Nerd Font Mono:h11"

-- Transparency
vim.g.neovide_transparency = 0.98

-- Automatic input method switching
local function set_ime(args)
  if args.event:match("Enter$") then
    vim.g.neovide_input_ime = true
  else
    vim.g.neovide_input_ime = false
  end
end

local ime_input = vim.api.nvim_create_augroup("ime_input", { clear = true })

vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
  group = ime_input,
  pattern = "*",
  callback = set_ime,
})

vim.api.nvim_create_autocmd({ "CmdlineEnter", "CmdlineLeave" }, {
  group = ime_input,
  pattern = "[/\\?]",
  callback = set_ime,
})

-- For automatic input method switching
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Cursor animation
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_cursor_vfx_particle_density = 100.0

-- Jump to the home directory
vim.cmd("autocmd VimEnter * cd ~")
