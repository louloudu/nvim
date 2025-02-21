if vim.fn.has("win32") == 1 then
  return {}
end

return {

  -- Bash LSP
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "bash-language-server", "shellcheck" } },
  },

  -- Bash DAP
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "bash-debug-adapter" } },
  },
}
