return{
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "rust_analyzer","ast_grep","clangd" },
      auto_install =true,
    },
  },

  {
    "saghen/blink.nvim",
    dependencies = {
      "rafamadriz/friendly-snippets"
    },
    opts = {
      keymap = {
        preset = "default",
      },
      completion = {
        documentation = {
          auto_show = true,
        },
      },
    },
  },


  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      vim.lsp.config.lua_ls = {
        capabilities = capabilities,
      }
      vim.lsp.config.rust_analyzer = {
        capabilities = capabilities,
      }
      vim.lsp.config.ast_grep = {
        capabilities = capabilities,
      }
      vim.lsp.config.clangd = {
        capabilities = capabilities,
      }

      vim.lsp.enable({"lua_ls","rust_analyzer","ast_grep","clangd"})
      vim.keymap.set('n','K',vim.lsp.buf.hover, {desc = "Highight info on the current word"})
      vim.keymap.set('n','gd',vim.lsp.buf.definition, {desc = "Provide some def for the current word"})
      vim.keymap.set('n','<Leader>ca',vim.lsp.buf.code_action, {desc = "Provide some code action"})
    end
  }

}
