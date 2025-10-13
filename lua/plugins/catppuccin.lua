return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        integration = {
          todo_comments = true,
          treesitter = true,
          telescope = true,
        }
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}


