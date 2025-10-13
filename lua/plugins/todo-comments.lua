return{
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  lazy = false,
  opts = {
  },
  -- TODO: test
    keys = {
      {"n","<Leader>tt","<cmd>TodoTelescope<CR>",{desc = 'Show all Todo'}},
      {"n","<Leader>tl","<cmd>TodoLocList<CR>", {desc = "Show all todos in the project with the location list"}},
      {"n","<Leader>tf","<cmd>TodoQuickFix<CR>", {desc = "List every todo in the project with the quickfix list"}},
    },


}
