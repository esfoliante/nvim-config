local tree = require'nvim-tree'

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>b", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<leader>to', '<cmd>:NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tt", '<cmd>:ToggleTerm size=40 start_in_insert=true dir=~/dev direction=float<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>sv', '<cmd>:vsplit<CR>', {noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sh', '<cmd>:hsplit<CR>', {noremap = true, silent = true })

-- Word motions
vim.keymap.set({"n", "v"}, "<M-Right>", "e", { noremap = true })
vim.keymap.set({"n", "v"}, "<M-Left>", "b", { noremap = true })

-- With Shift (visual expand)
vim.keymap.set("v", "<S-M-Right>", "e", { noremap = true })
vim.keymap.set("v", "<S-M-Left>", "b", { noremap = true })

-- Formatter
vim.keymap.set('v', '<leader>f', '<cmd>:Format<CR>', { noremap = true, silent = true })
vim.keymap.set('v', '<leader>wf', '<cmd>:FormatWrite<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>tp', ':lua require("theme-picker").open_theme_picker()<CR>', { noremap = true, silent = true })

-- Markdown previewer
vim.api.nvim_set_keymap('n', '<leader>mp', '<cmd>:MarkdownPreview<CR>', { noremap = true, silent = true })
