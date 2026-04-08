return {
  "folke/noice.nvim",
  event = "VeryLazy",
  config = function ()
    require("noice").setup({
      presets = {
         command_palette = true,
      }
    })
  end,
  opts = {
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    },
}
