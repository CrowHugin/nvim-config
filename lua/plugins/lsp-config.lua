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
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.ast_grep.setup({})
      lspconfig.clangd.setup({})
      vim.keymap.set('n','K',vim.lsp.buf.hover, {})
      vim.keymap.set('n','gd',vim.lsp.buf.definition, {})
      vim.keymap.set('n','<Leader>ca',vim.lsp.buf.code_action, {})
    end
  }

}
