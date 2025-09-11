return {
  "epwalsh/obsidian.nvim",
  version = "*", -- garde la dernière version stable
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>wo", "<cmd>lua print(require('obsidian').get_client().dir)<cr>", desc = "Afficher le dossier Obsidian" },
  },

  opts = {
    -- 🔹 Emplacement de ton "vault" Obsidian
    workspaces = {
      {
        name = "notes",          -- nom de ton vault (libre, juste un label)
        path = "~/Bureau/notes", -- chemin vers ton dossier Obsidian
      },
      {
        name = "nvim",
        path = "~/.config/nvim",
      },
    },

    -- 🔹 Activer la complétion pour les liens [[...]]
    completion = {
      nvim_cmp = true, -- si tu utilises nvim-cmp
      min_chars = 2,   -- commence la complétion après 2 caractères
    },

    -- 🔹 Templates (optionnel, si tu en utilises dans Obsidian)
    templates = {
      folder = "Templates", -- sous-dossier dans ton vault
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },

    open_notes_in = "vsplit", --can be current, vsplit, hsplit or in comment

    -- 🔹 Mapping pour suivre un lien ou créer la note correspondante
    mappings = {
      ["<Leader>wl"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
        },
  },
}
