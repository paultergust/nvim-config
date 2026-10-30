return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local langs = {
          "c",
          "lua",
          "vim",
          "vimdoc",
          "query",
          "python",
          "rust",
          "go",
        }

        vim.api.nvim_create_autocmd("FileType", {
          pattern = langs,
          callback = function(args)
            pcall(vim.treesitter.start, args.buf)
          end,
        })
    end,
}
