return {

  {
    "voldikss/vim-translator",
    lazy = true,
    cmd = { "TranslateW", "TranslateWV" },
    -- Set key mappings
    keys = {
      { "<A-t>", "<Plug>TranslateW", mode = "n", silent = true },
      { "<A-t>", "<Plug>TranslateWV", mode = "v", silent = true },
    },
    config = function()
      -- Set global variables
      vim.g.translator_default_engines = { "bing" }
      vim.g.translator_window_type = "popup"
      vim.g.translator_target_lang = "zh"
      vim.g.translator_source_lang = "auto"
    end,
  },
}
