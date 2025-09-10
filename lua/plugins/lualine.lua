return{
  'nvim-lualine/lualine.nvim',
  dependencies = {
    "archibate/lualine-time",
    },
  config = function()
    require("lualine").setup({
      options = {
        theme = 'dracula'
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'ctime','cdate'},
        lualine_y = {'progress'},
        lualine_z = {'location'},
      },
    })
  end
}
