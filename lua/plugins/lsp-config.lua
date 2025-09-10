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
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
      })
      lspconfig.ast_grep.setup({
        capabilities = capabilities,
      })
      lspconfig.clangd.setup({
        capabilities = capabilities,
      })
      vim.keymap.set('n','K',vim.lsp.buf.hover, {desc = "Highight info on the current word"})
      vim.keymap.set('n','gd',vim.lsp.buf.definition, {desc = "Provide some def for the current word"})
      vim.keymap.set('n','<Leader>ca',vim.lsp.buf.code_action, {desc = "Provide some code action"})
    end
  }

}
