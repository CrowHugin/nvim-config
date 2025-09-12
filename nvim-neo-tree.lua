return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    vim.keymap.set("n", "<leader>n", ":Neotree toggle filesystem reveal right<CR>",{desc = "Toggle the filesystem tree on right"}),
    vim.keymap.set("n","<Leader>cp",":e $MYVIMRC | :cd %:p:h | :Neotree toggle filesystem reveal right<CR>",{desc = "Go to setting"}),
  }
}
