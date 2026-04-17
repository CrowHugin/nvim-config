vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set colorcolumn=80")
vim.cmd("set relativenumber")
vim.cmd("syntax on")

-- Setting the clipboard as the system's one
vim.opt.clipboard = "unnamedplus"

-- Setting jj and jk on escape
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = false })

-- Setting tab to move to the next windows
vim.keymap.set('n', '<Tab>', '<C-w>w', { noremap = true, silent = true })
-- Setting Shift + tab to move to the prev windows
vim.keymap.set('n', '<S-Tab>', '<C-w>W', { noremap = true, silent = true })

-- Disable arrows
for _, mode in ipairs({ 'n', 'i', 'v' }) do
  vim.keymap.set(mode, '<Up>', '<Nop>', { noremap = true, silent = true })
  vim.keymap.set(mode, '<Down>', '<Nop>', { noremap = true, silent = true })
  vim.keymap.set(mode, '<Left>', '<Nop>', { noremap = true, silent = true })
  vim.keymap.set(mode, '<Right>', '<Nop>', { noremap = true, silent = true })
end

-- Setting kaymap to mouve between windows in tmux
vim.keymap.set("n","<C-h>","<cmd> TmuxNaviagateLeft<CR>", {noremap = false})
vim.keymap.set("n","<C-l>","<cmd> TmuxNaviagateRight<CR>", {noremap = false})
vim.keymap.set("n","<C-j>","<cmd> TmuxNaviagateDown<CR>", {noremap = false})
vim.keymap.set("n","<C-k>","<cmd> TmuxNaviagateUp<CR>", {noremap = false})

-- Disable mouse
vim.opt.mouse = ""

-- Setting hg for the 42 header
vim.api.nvim_set_keymap("n","hg","<cmd> Stdheader<CR>", {noremap = false})
