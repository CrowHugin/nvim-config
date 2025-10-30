vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set colorcolumn=80")

-- setting jj and jk to escape on normal mode
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = false })

-- Aller à la fenêtre suivante avec Tab
vim.keymap.set('n', '<Tab>', '<C-w>w', { noremap = true, silent = true })
-- Aller à la fenêtre précédente avec Shift-Tab
vim.keymap.set('n', '<S-Tab>', '<C-w>W', { noremap = true, silent = true })

-- disable arrows to ensure the use of h j k l
for _, mode in ipairs({ 'n', 'i', 'v' }) do
  vim.keymap.set(mode, '<Up>', '<Nop>', { noremap = true, silent = true })
  vim.keymap.set(mode, '<Down>', '<Nop>', { noremap = true, silent = true })
  vim.keymap.set(mode, '<Left>', '<Nop>', { noremap = true, silent = true })
  vim.keymap.set(mode, '<Right>', '<Nop>', { noremap = true, silent = true })
end

-- set kaymap to mouve between windows
-- mostly use in combination with tmux
vim.keymap.set("n","<C-h>","<cmd> TmuxNaviagateLeft<CR>", {noremap = false})
vim.keymap.set("n","<C-l>","<cmd> TmuxNaviagateRight<CR>", {noremap = false})
vim.keymap.set("n","<C-j>","<cmd> TmuxNaviagateDown<CR>", {noremap = false})
vim.keymap.set("n","<C-k>","<cmd> TmuxNaviagateUp<CR>", {noremap = false})



-- disable mouse inside nvim
vim.opt.mouse = ""
