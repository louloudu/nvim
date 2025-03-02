return {

  {
    "skywind3000/asynctasks.vim",
    dependencies = { "skywind3000/asyncrun.vim" },
    lazy = true,
    cmd = { "AsyncTask" },
    keys = {
      { "<leader>t", function() end, desc = "tasks", mode = "n" },
      { "<leader>tf", function() end, desc = "file", mode = "n" },
      { "<leader>tp", function() end, desc = "project", mode = "n" },
      { "<leader>tfb", ":AsyncTask file-build<CR>", mode = "n", silent = true, desc = "File Build" },
      { "<leader>tfr", ":AsyncTask file-run<CR>", mode = "n", silent = true, desc = "File Run" },
      { "<leader>tpb", ":AsyncTask project-build<CR>", mode = "n", silent = true, desc = "Project Build" },
      { "<leader>tpr", ":AsyncTask project-run<CR>", mode = "n", silent = true, desc = "Project Run" },
      { "<leader>tpc", ":AsyncTask project-clean<CR>", mode = "n", silent = true, desc = "Project Clean" },
    },
    config = function()
      vim.g.asyncrun_open = 6
      vim.g.asynctasks_term_pos = "bottom"
      vim.g.asyncrun_rootmarks = { ".git", ".svn", ".root", ".project", ".hg" }
    end,
  },
}
