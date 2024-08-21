vim.opt.termguicolors = true
require("bufferline").setup{}

local function goto_buffer(number)
    vim.cmd("BufferLineGoToBuffer " .. number)
end

for i = 1, 9 do
    vim.keymap.set('n', '<leader>' .. i, function() goto_buffer(i) end, { noremap = true, silent = true })
end
vim.keymap.set('n', '<leader>pc', vim.cmd.BufferLinePickClose)
