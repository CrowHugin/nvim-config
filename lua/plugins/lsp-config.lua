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
      ensure_installed = {"ast_grep", "clangd", "lua_ls", "pylint", "rust_analyzer", "stylua", "pyright", "ruff", "mypy"},
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    lazy = false,
    config = function()
      local caps = require('cmp_nvim_lsp').default_capabilities()

      -- servers list
      local servers = { "lua_ls", "rust_analyzer", "ast_grep", "clangd", "pyright" }

      for _, server in ipairs(servers) do
        vim.lsp.config[server] = {
          capabilities = caps,
        }
      end

      vim.lsp.enable(servers)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Highlight info on the current word" })
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Provide some def for the current word" })
      vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, { desc = "Provide some code action" })
    end
  }
}
