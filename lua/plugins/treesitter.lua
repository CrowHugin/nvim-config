return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- compile les parsers à l’installation/mise à jour
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "lua", "vim", "vimdoc", "query", -- parsers essentiels pour Neovim
        "bash", "markdown", "markdown_inline", "json", "yaml", "html", "css", "javascript","c","python","lua",
      },
      sync_install = false, -- installation asynchrone (plus rapide)
      auto_install = true,  -- installe automatiquement les parsers manquants quand tu ouvres un fichier
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

