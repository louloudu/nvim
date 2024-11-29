return {

  -- C/C++ LSP
  -- Modify the C/C++ code style
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      if opts.servers.clangd.cmd then
        for i, cmd in ipairs(opts.servers.clangd.cmd) do
          if cmd == "--fallback-style=llvm" then
            opts.servers.clangd.cmd[i] = "--fallback-style=Microsoft"
          end
        end
      end
    end,
  },

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
}
