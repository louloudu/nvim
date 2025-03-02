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

  -- C/C++ DAP
  -- Turn off the default codelldb, use cppdbg (vscode-cpptools), and keep the menu clean
  {
    -- Regarding the default configuration of "mason-nvim-dap.nvim"
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      handlers = {
        -- Modify the default configuration of cppdbg
        cppdbg = function(config)
          config.configurations = {
            {
              name = "GDB: Launch",
              type = "cppdbg",
              request = "launch",
              MIMode = "gdb",
              miDebuggerPath = vim.fn.exepath("gdb"),
              program = function()
                local separator = package.config:sub(1, 1) == "\\" and "\\" or "/"
                return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. separator, "file")
              end,
              cwd = "${workspaceFolder}",
              stopAtEntry = true,
            },
          }
          require("mason-nvim-dap").default_setup(config) -- don't forget this!
        end,

        -- Disable the default configuration of codelldb
        -- codelldb = function(config)
        --   config.configurations = nil
        --   require("mason-nvim-dap").default_setup(config) -- don't forget this!
        -- end,
      },
    },
  },

  -- Turn off the pre-configurations that LazyVim has set up for nvim-dap
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      -- Ensure C/C++ debugger is installed
      "williamboman/mason.nvim",
      opts = { ensure_installed = { "cpptools" } },
    },

    opts = function()
      local dap = require("dap")
      -- Remove the preset codelldb adapter
      if dap.adapters["codelldb"] then
        dap.adapters["codelldb"] = nil
      end
      -- Clear the pre-configurations for C/C++
      for _, lang in ipairs({ "c", "cpp" }) do
        if dap.configurations[lang] then
          dap.configurations[lang] = nil
        end
      end
    end,
  },
}
