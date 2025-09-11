return{
  "jiaoshijie/undotree",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
      local undotree = require("undotree")
      undotree.setup({
        float_diff = false,
        position = "right",
      })
    end,
  ---@module 'undotree.collector'
  ---@type UndoTreeCollector.Opts
  opts = {
    -- your options
  },
  keys = { -- load the plugin only when using it's keybinding:
    { "<Leader>u", "<cmd>lua require('undotree').toggle()<cr>",desc = "toggle undotree"},
  },
}
