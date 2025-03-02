return {

  {
    "Mofiqul/adwaita.nvim",
    lazy = true,
    config = function()
      vim.g.adwaita_darker = false
      vim.g.adwaita_transparent = false
    end,
  },

  {
    "uloco/bluloco.nvim",
    lazy = true,
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      require("bluloco").setup({
        style = "dark",
        transparent = false,
        italics = false,
        terminal = vim.fn.has("gui_running") == 1,
        guicursor = true,
      })
      vim.opt.termguicolors = true
    end,
  },

  {
    "yashguptaz/calvera-dark.nvim",
    lazy = true,
    config = function()
      vim.g.calvera_transparent_bg = false
      vim.g.calvera_contrast = true
    end,
  },

  {
    "Mofiqul/dracula.nvim",
    lazy = true,
    config = function()
      require("dracula").setup({
        transparent_bg = false,
      })
    end,
  },

  {
    "neanias/everforest-nvim",
    lazy = true,
    config = function()
      require("everforest").setup({
        background = "hard",
        transparent_background_level = 0, -- background
        italics = true,
        disable_italic_comments = true,
        sign_column_background = "none",
        ui_contrast = "high",
        dim_inactive_windows = false,
        diagnostic_text_highlight = false,
        diagnostic_virtual_text = "grey",
        diagnostic_line_highlight = false,
        spell_foreground = false,
        show_eob = true,
        float_style = "bright",
        inlay_hints_background = "none",
        on_highlights = function() end,
        colours_override = function() end,
      })
    end,
  },

  {
    "maxmx03/fluoromachine.nvim",
    lazy = true,
    config = function()
      local fm = require("fluoromachine")
      fm.setup({
        theme = "retrowave", -- "delta" | "fluoromachine" | "retrowave"
        brightness = 0.03,
        glow = true,
        transparent = false,
      })
    end,
  },

  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          emphasis = true,
          comments = false,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        contrast = "hard", -- "hard" | "soft"
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
    end,
  },

  {
    "marko-cerovac/material.nvim",
    lazy = true,
    config = function()
      vim.g.material_style = "darker" -- "darker" | "lighter" | "oceanic" | "palenight" | "deep ocean"
      require("material").setup({
        disable = {
          background = false,
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
    "EdenEast/nightfox.nvim",
    lazy = true,
    config = function()
      require("nightfox").setup({
        options = {
          transparent = false,
          styles = {
            strings = "italic",
          },
          inverse = {
            match_paren = true,
          },
        },
      })
    end,
  },

  {
    "AlexvZyl/nordic.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      require("nordic").setup({
        on_palette = function() end,
        after_palette = function() end,
        on_highlight = function() end,
        bold_keywords = false,
        italic_comments = false,
        transparent = {
          bg = false,
          float = false,
        },
        bright_border = true,
        reduced_blue = true,
        swap_backgrounds = false,
        cursorline = {
          bold = false,
          bold_number = true,
          theme = "light",
          blend = 0.85,
        },
        noice = {
          style = "classic",
        },
        telescope = {
          style = "flat",
        },
        leap = {
          dim_backdrop = false,
        },
        ts_context = {
          dark_background = true,
        },
      })
    end,
  },

  {
    "olimorris/onedarkpro.nvim",
    lazy = true,
    config = function()
      require("onedarkpro").setup({
        options = {
          transparency = false,
          lualine_transparency = true,
        },
      })
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
        comments = { italic = false },
        keywords = { italic = false },
      },
    },
  },

  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          "adwaita",
          "bluloco",
          "calvera",
          "dracula",
          "duskfox",
          "everforest",
          "fluoromachine",
          "gruvbox",
          "material",
          "nordic",
          "onedark",
          "tokyonight",
        },
      })
    end,
  },
}
