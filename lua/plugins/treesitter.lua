return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "lua", "vim", "vimdoc", "query", -- parsers essentiels pour Neovim
        "bash", "markdown", "markdown_inline", "json", "yaml", "html", "css", "javascript","c","python","lua",
      },
      sync_install = false,
      auto_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
    }
  end,
}

