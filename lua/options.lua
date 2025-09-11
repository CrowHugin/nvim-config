vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

-- setting jj and jk to escape on normal mode
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = false })

-- Aller à la fenêtre suivante avec Tab
vim.keymap.set('n', '<Tab>', '<C-w>w', { noremap = true, silent = true })
-- Aller à la fenêtre précédente avec Shift-Tab
vim.keymap.set('n', '<S-Tab>', '<C-w>W', { noremap = true, silent = true })

