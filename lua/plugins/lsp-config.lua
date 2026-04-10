return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "rust_analyzer", "ast_grep", "clangd", "pyright" },
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    lazy = false,
    config = function()
      -- Récupération des capacités pour nvim-cmp
      local caps = require('cmp_nvim_lsp').default_capabilities()

      -- Liste de tes serveurs
      local servers = { "lua_ls", "rust_analyzer", "ast_grep", "clangd", "pyright" }

      -- Configuration simplifiée style Neovim 0.11+
      for _, server in ipairs(servers) do
        vim.lsp.config[server] = {
          capabilities = caps,
        }
      end

      -- Activation en une seule ligne
      vim.lsp.enable(servers)

      -- Keymaps globaux
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Highlight info on the current word" })
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Provide some def for the current word" })
      vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, { desc = "Provide some code action" })
    end
  }
}
