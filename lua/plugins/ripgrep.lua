return {
    "jremmen/vim-ripgrep",
    config = function()
        vim.keymap.set('n', '<leader>ps', ':Rg ')
    end,
}
