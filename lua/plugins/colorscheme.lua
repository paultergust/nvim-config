return {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
        function Color(color)
            color = color or "kanagawa"
            vim.cmd.colorscheme(color)
        end

        function BG()
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end


        Color()
    end,
}
