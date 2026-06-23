return {
  "folke/noice.nvim",
  event = "VeryLazy",
  config = function ()
    -- On force nvim-notify à s'afficher en bas à droite
    require("notify").setup({
      top_down = false,
    })

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
