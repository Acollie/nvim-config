require('acollie')
require('acollie.packer')
require('acollie.remap')
require('acollie.after.plugin.telescope')
require('acollie.after.plugin.treesitter')
require('acollie.after.plugin.orgmode')


vim.o.relativenumber = true
vim.o.number = true
vim.api.nvim_set_keymap('n', '<C-l>', ':set relativenumber! number!<CR>', { noremap = true, silent = true })
