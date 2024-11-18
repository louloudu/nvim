return {
  {
    "uloco/bluloco.nvim",
    lazy = true,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      -- your optional config goes here, see below.
      require("bluloco").setup({
        style = "light", -- "auto" | "dark" | "light"
        transparent = false,
        italics = true,
        terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
        guicursor = true,
      })
      vim.opt.termguicolors = true
    end,
  },

  {
    "cpea2506/one_monokai.nvim",
    lazy = true,
    priority = 1000,
  },

  {
    "Yazeed1s/oh-lucy.nvim",
    lazy = true,
    priority = 1000,
  },

  {
    "Mofiqul/adwaita.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "adwaita",
    },
  },
}
