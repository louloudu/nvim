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
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      -- Find the 'g' key mapping in the center section and update it
      for _, button in ipairs(opts.config.center) do
        if button.key == "g" then
          button.action = function()
            require("telescope").extensions.live_grep_args.live_grep_args()
          end
        end
      end
    end,
  },
}
