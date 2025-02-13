return {

  {
    "uloco/bluloco.nvim",
    lazy = true,
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      require("bluloco").setup({
        style = "dark", -- "auto" | "dark" | "light"
        transparent = true,
        italics = true,
        terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
        guicursor = true,
      })
      vim.opt.termguicolors = true
    end,
  },

  {
    "Mofiqul/adwaita.nvim",
    lazy = true,
    config = function()
      vim.g.adwaita_darker = false -- for darker version
      vim.g.adwaita_disable_cursorline = true -- to disable cursorline
      vim.g.adwaita_transparent = true -- makes the background transparent
    end,
  },

  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.material_style = "Deep ocean"
      require("material").setup({
        disable = {
          background = true,
        },
        lualine_style = "stealth",
      })
      require("lualine").setup({
        options = {
          theme = "auto",
        },
      })
    end,
  },

  {
    "maxmx03/fluoromachine.nvim",
    lazy = true,
    config = function()
      local fm = require("fluoromachine")
      fm.setup({
        theme = "retrowave",
        brightness = 0.03,
        glow = true,
        transparent = true,
      })
    end,
  },

  {
    "olimorris/onedarkpro.nvim",
    lazy = true,
    config = function()
      require("onedarkpro").setup({
        options = {
          transparency = true,
        },
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material",
    },
  },
}
