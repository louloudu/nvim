-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.clipboard = "" -- Close system clipboard
vim.o.tabstop = 4 -- Number of spaces tabs count for
vim.o.shiftwidth = 4 -- Size of an indent
vim.o.hidden = true -- Switching buffers doesn't require saving
vim.o.swapfile = false -- Prohibit the generation of swapfiles
vim.o.autoread = true -- Files are automatically re-read
vim.o.virtualedit = "block,onemore" -- Allow the cursor to be behind the last character
vim.o.list = false -- Disable the display of space characters
vim.o.wrap = true -- Enable text wrapping when the line reaches the window edge
vim.o.breakindent = true -- Make the wrapped text follow indentation rules
vim.o.linebreak = true -- Force line breaks to occur only at appropriate places

-- Set the default terminal to PowerShell in Windows
if vim.fn.has("win32") or vim.fn.has("win64") then
  LazyVim.terminal.setup("powershell")
end
-- Fixing some plugins may cause error messages when starting PowerShell
vim.o.shellcmdflag =
  "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';"
vim.o.shellpipe = '2>&1 | %%{ "$_" } | Tee-Object %s; exit $LastExitCode'
