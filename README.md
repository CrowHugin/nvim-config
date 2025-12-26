# Nvim configuration


---
*requirement :* 

- *Nvim >= 0.10*
- Git >= 2.19.0
- [Nerd Front](https://www.nerdfonts.com/font-downloads) **(optional)** 
     - [How to install a Nerd Front on Linux](https://gist.github.com/matthewjberger/7dd7e079f282f8138a9dc3b045ebefa0)
     - [How to install a Nerd Front on Windows (WSL)](https://www.reddit.com/r/linux4noobs/comments/m9bpbw/how_to_install_nerdfonts_in_wsl/) 
     - [How to install a Nerd Front on Mac OS](https://www.lorenzobettini.it/2025/06/install-nerd-fonts-on-macos-with-homebrew/)
---
*installation:*

Latest version off neovim on ubuntu / debian:
```bash
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update 
sudo apt-get install neovim
```

*If you already have an nvim configuration use:*

```bash
	mv ~/.config/nvim ~/.config/nvim.bak
```

Then:

```bash
    git clone https://github.com/CrowHugin/nvim-config ~/.config/nvim
```

---
Plugin used inside Efficient nvim:
- [alpha](https://github.com/goolord/alpha-nvim)
- [catppuccin (mocha)](https://github.com/catppuccin/nvim)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [dap](https://github.com/mfussenegger/nvim-dap)
- [dapui](https://github.com/rcarriga/nvim-dap-ui)
- [diffview](https://github.com/sindrets/diffview.nvim)
- [harpoon2](https://github.com/ThePrimeagen/harpoon)
- [lazyvim](https://github.com/folke/lazydev.nvim)
- [lsp-config](https://github.com/neovim/nvim-lspconfig)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [luaSnip](https://github.com/L3MON4D3/LuaSnip)
- [mason](https://github.com/mason-org/mason.nvim)
- [mason-lspconfig](https://github.com/mason-org/mason-lspconfig.nvim)
- [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [neogit](https://github.com/NeogitOrg/neogit)
- [noice](https://github.com/folke/noice.nvim)
- [none-ls](https://github.com/nvimtools/none-ls.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [pomo](https://github.com/epwalsh/pomo.nvim)
- [render-mardown](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [toogleterm](https://github.com/akinsho/toggleterm.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [undotree](https://github.com/jiaoshijie/undotree)
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
- [which-key](https://github.com/folke/which-key.nvim)

---
**To remove a plugin:** 

Remove the plugin file .lua you don't want anymore

Then use `:Lazy` & `X`

---
**To add a plugin:**

Add a file .lua 

Then add a lua table such as:
```lua
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        --transparent_background = true,
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  }
}
```

---
**For auto completion and hightlighting:**

use :

```
:Mason 
```
and install any packages you need for the languages you use

installed by default :
- [ast-grep](https://ast-grep.github.io/)
- [black](https://github.com/averms/black-nvim/tree/master)
- [clangd](https://clangd.llvm.org/)
- [isort](https://pycqa.github.io/isort/)
- [lua-language-server](https://github.com/LuaLS/lua-language-server/wiki)
- [pylint](https://pylint.readthedocs.io/en/stable/)
- [rust-analyser](https://rust-analyzer.github.io/book/)
- [sonarlint-language-server](https://github.com/SonarSource/sonarlint-language-server)
- [stylua](https://github.com/JohnnyMorganz/StyLua)

If it doesn't work use:
```bash
sudo apt-get install build-essential
sudo apt-get install npm
```

or any missing packages

---
*enjoy :)*
