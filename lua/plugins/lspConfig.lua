return {

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
}
