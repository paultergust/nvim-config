require('gitsigns').setup()
vim.keymap.set('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>')
vim.keymap.set('n', '<leader>hr', ':Gitsigns reset_hunk<CR>')

