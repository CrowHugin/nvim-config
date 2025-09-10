return{
  {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    "nvim-telescope/telescope.nvim", -- optional
  },
  config = function()
    local neogit = require("neogit")

    vim.keymap.set("n","<Leader>gs",":Neogit kind=floating<CR>",
      {desc = "open git", silent = true, noremap = true}
    )
    vim.keymap.set("n","<Leader>gc", ":Neogit commit<CR>",
      {desc = "(git) commit", silent = true, noremap = true}
    )
    vim.keymap.set("n","<Leader>gp", ":Neogit pull<CR>",
      {desc = "(git) pull request", silent = true, noremap = true}
    )
    vim.keymap.set("n","<Leader>gP", ":Neogit push<CR>",
      {desc = "(git) pushing", silent = true, noremap = true}
    )
    vim.keymap.set("n","<Leader>gb", ":Telescope git_branches<CR>",
      {desc = "(git) view branches", silent = true, noremap = true}
    )
    vim.keymap.set("n","<Leader>gB", ":G blame<CR>",
      {desc = "(git) blame", silent = true, noremap = true}
    )
    vim.keymap.set("n","<Leader>gd", ":DiffviewOpen<CR>",
      {desc = "(git) show the diffview", silent = true, noremap = true,}
    )
    vim.keymap.set("n","<Leader>gw", ":Neogit worktree<CR>",
      {desc = "(git) Show the worktree", silent = true, noremap = true,}
    )
  end
  },
  {
  "f-person/git-blame.nvim",
  config = function()
    vim.g.gitblame_enabled = 0 -- désactivé par défaut
    -- toggle avec <Leader>gB
    vim.keymap.set("n", "<Leader>gB", "<cmd>GitBlameToggle<CR>", { desc = "toggle git blame" })
  end,
  }

}
