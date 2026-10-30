return {
    "scrooloose/nerdtree",
    config = function()
        vim.keymap.set('n', '<leader>e', vim.cmd.NERDTreeToggle)
    end,
}
