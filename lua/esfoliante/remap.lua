local tree = require'nvim-tree'

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>b", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<leader>to', '<cmd>:NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ot", '<cmd>:ToggleTerm size=40 start_in_insert=true dir=~/dev direction=float<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>sv', '<cmd>:vsplit<CR>', {noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sh', '<cmd>:hsplit<CR>', {noremap = true, silent = true })
