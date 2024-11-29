if vim.fn.has("win32") == 1 then
  return {}
end

return {

  -- Bash LSP
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "bash-language-server", "shellcheck" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bashls = {
          cmd = { "bash-language-server", "start" },
          filetypes = { "sh", "bash" },
          root_dir = require("lspconfig").util.find_git_ancestor,
          settings = {
            bashIde = {
              globPattern = "*@(.sh|.inc|.bash|.command)",
            },
          },
          single_file_support = true,
        },
      },
    },
  },

  -- Bash DAP
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "bash-debug-adapter" } },
  },
}
