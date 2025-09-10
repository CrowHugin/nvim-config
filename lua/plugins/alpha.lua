return{
    {
    "goolord/alpha-nvim",
    -- dependencies = { 'echasnovski/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- Set header
      dashboard.section.header.val = {
          "                                                     ",
          "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
          "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
          "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
          "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
          "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
          "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
          "                                                     ",
      }
      dashboard.section.buttons.val = {
        dashboard.button("e", "  Nouveau fichier", ":ene <BAR> startinsert<CR>"),
        dashboard.button("f", "󰈞  Rechercher fichier", ":Telescope find_files<CR>"),
        dashboard.button("r", "  > Recent"   , ":Telescope oldfiles<CR>"),
        dashboard.button("g", "  Git status", ":Neogit kind=floating<CR>"),
        dashboard.button("p", "󰏓  Plugins", ":Lazy<CR>"),
        dashboard.button("u", "󰚰  MAJ Plugins", ":Lazy sync<CR>"),
        dashboard.button("s", "  Paramètres", ":e $MYVIMRC | :cd %:p:h | :Neotree toggle filesystem reveal right<CR>"),
        dashboard.button("q", "  Quitter Neovim", ":qa<CR>"),
      }

      -- Send config to alpha
      alpha.setup(dashboard.opts)

      -- Disable folding on alpha buffer
      vim.cmd([[
          autocmd FileType alpha setlocal nofoldenable
      ]])
    end
  },
}
