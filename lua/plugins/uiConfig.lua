return {

  -- Add icons in "lualine"
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, "encoding")
      table.insert(opts.sections.lualine_x, "fileformat")
    end,
  },

  -- Use live_grep_args for the "g" key function in the dashboard interface
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      for _, key in ipairs(opts.dashboard.preset.keys) do
        if key.key == "g" then
          key.action = ":lua require('telescope').extensions.live_grep_args.live_grep_args()"
          break
        end
      end
    end,
  },
}
