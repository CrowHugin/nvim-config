# Efficient Nvim


---
*requirement :* 

- *Nvim >= 0.10*
- Git >= 2.19.0
- [Nerd Front](https://www.nerdfonts.com/font-downloads) **(optional)**
---
*installation:*

*If you already have an nvim configuration use:*

```bash
	mv ~/.config/nvim ~/.config/nvim.bak
```

Then:

```bash
    git clone https://github.com/CrowHugin/Efficient-vim ~/.config/nvim
```

Plugin used inside Efficient nvim:

|       Plugin       |                        Link                        |
| :----------------: | :------------------------------------------------: |
|       alpha        |       https://github.com/goolord/alpha-nvim        |
| catppuccin (mocha) |         https://github.com/catppuccin/nvim         |
|    cmp-nvim-lsp    |      https://github.com/hrsh7th/cmp-nvim-lsp       |
|        dap         |      https://github.com/mfussenegger/nvim-dap      |
|       dapui        |      https://github.com/rcarriga/nvim-dap-ui       |
|      diffview      |     https://github.com/sindrets/diffview.nvim      |
|      harpoon2      |      https://github.com/ThePrimeagen/harpoon       |
|      lazyvim       |       https://github.com/folke/lazydev.nvim        |
|     lsp-config     |      https://github.com/neovim/nvim-lspconfig      |
|      lualine       |    https://github.com/nvim-lualine/lualine.nvim    |
|      luaSnip       |        https://github.com/L3MON4D3/LuaSnip         |
|       mason        |      https://github.com/mason-org/mason.nvim       |
|  mason-lspconfig   | https://github.com/mason-org/mason-lspconfig.nvim  |
|      neo-tree      |   https://github.com/nvim-neo-tree/neo-tree.nvim   |
|     neogit<br>     |        https://github.com/NeogitOrg/neogit         |
|       noice        |        https://github.com/folke/noice.nvim         |
|      none-ls       |     https://github.com/nvimtools/none-ls.nvim      |
|      nvim-cmp      |        https://github.com/hrsh7th/nvim-cmp         |
|  pomo (pomodoro)   |        https://github.com/epwalsh/pomo.nvim        |
|     telescope      |  https://github.com/nvim-telescope/telescope.nvim  |
|     toggleterm     |     https://github.com/akinsho/toggleterm.nvim     |
|     treesitter     | https://github.com/nvim-treesitter/nvim-treesitter |
|      undotree      |       https://github.com/jiaoshijie/undotree       |
|     which-key      |      https://github.com/folke/which-key.nvim       |

---
*Config:*

**To remove a plugin:** 

Remove the plugin file .lua you don't want anymore


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

**For auto completion and hightlighting:**

use :

```
:Mason 
```
and install any packages you need for the languages you use

installed by default :
- ast-grep
- black
- clangd
- isort
- lua-language-server
- pylint
- rust-analyser
- sonarlint-language-server
- stylua


*enjoy :)*
