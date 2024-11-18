return {
  "skywind3000/asynctasks.vim",
  dependencies = { "skywind3000/asyncrun.vim" },
  lazy = true,
  cmd = { "AsyncTask" },
  keys = {
    { "<A-b>", ":AsyncTask file-build<CR>", mode = "n", silent = true },
    { "<A-r>", ":AsyncTask file-run<CR>", mode = "n", silent = true },
  },
  config = function()
    -- Set global variables
    vim.g.asyncrun_open = 6
    vim.g.asynctasks_term_pos = "bottom"
    vim.g.asyncrun_rootmarks = { ".git", ".svn", ".root", ".project", ".hg" }
  end,
}
