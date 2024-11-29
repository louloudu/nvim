return {

  {
    "uloco/bluloco.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      -- your optional config goes here, see below.
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
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.adwaita_darker = false -- for darker version
      vim.g.adwaita_disable_cursorline = true -- to disable cursorline
      vim.g.adwaita_transparent = true -- makes the background transparent
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "bluloco",
    },
  },
}
