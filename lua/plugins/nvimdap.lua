local function get_args(config)
  local args = type(config.args) == "function" and (config.args() or {}) or config.args or {} --[[@as string[] | string ]]
  local args_str = type(args) == "table" and table.concat(args, " ") or args --[[@as string]]

  config = vim.deepcopy(config)
  ---@cast args string[]
  config.args = function()
    local new_args = vim.fn.expand(vim.fn.input("Run with args: ", args_str)) --[[@as string]]
    if config.type and config.type == "java" then
      ---@diagnostic disable-next-line: return-type-mismatch
      return new_args
    end
    return require("dap.utils").splitstr(new_args)
  end
  return config
end

return {

  -- disable nvim-dap-virtual-text
  {
    "theHamsta/nvim-dap-virtual-text",
    enabled = false,
  },

  -- Custom debug key mappings
  {
    "mfussenegger/nvim-dap",
    keys = {
      {
        "<F5>",
        function()
          require("dap").continue()
        end,
        desc = "Run/Continue (debug)",
      },

      {
        "<S-F5>",
        function()
          require("dap").terminate()
        end,
        desc = "Terminate (debug)",
      },

      {
        "<F4>",
        function()
          require("dap").continue({ before = get_args })
        end,
        desc = "Run with Args (debug)",
      },

      {
        "<F6>",
        function()
          require("dap").pause()
        end,
        desc = "Pause (debug)",
      },

      {
        "<F8>",
        function()
          require("dap").down()
        end,
        desc = "Down (debug)",
      },

      {
        "<S-F8>",
        function()
          require("dap").up()
        end,
        desc = "Up (debug)",
      },

      {
        "<F9>",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Toggle Breakpoint (debug)",
      },

      {
        "<S-F9>",
        function()
          require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
        end,
        desc = "Breakpoint Condition (debug)",
      },

      {
        "<F10>",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over (debug)",
      },

      {
        "<F11>",
        function()
          require("dap").step_into()
        end,
        desc = "Step Into (debug)",
      },

      {
        "<S-F11>",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out (debug)",
      },

      {
        "<F12>",
        function()
          require("dap").run_to_cursor()
        end,
        desc = "Run to Cursor (debug)",
      },
    },
  },

  {
    "rcarriga/nvim-dap-ui",
    keys = {
      {
        "<F3>",
        function()
          require("dapui").toggle({})
        end,
        desc = "Dap UI (debug)",
      },
    },
  },
}
