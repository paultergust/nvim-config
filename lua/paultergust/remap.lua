vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')
vim.keymap.set('n', '<leader>y', function()
  -- Copy whole buffer to system clipboard
  vim.cmd('silent %y+')
  print('Copied')
end, { desc = 'Copy entire file contents to clipboard' })


vim.api.nvim_create_user_command('ReIndent', function()
  vim.cmd([[%s/^\( \{2}\)\+/\=repeat(' ', len(submatch(0)) * 2)]])
end, {})
