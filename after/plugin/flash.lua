require("flash").setup({}) -- your Flash.Config options go here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map({ "n", "x", "o" }, "s", function() require("flash").jump() end, vim.tbl_extend("force", opts, { desc = "Flash" }))
map({ "n", "x", "o" }, "S", function() require("flash").treesitter() end, vim.tbl_extend("force", opts, { desc = "Flash Treesitter" }))
map("o", "r", function() require("flash").remote() end, vim.tbl_extend("force", opts, { desc = "Remote Flash" }))
map({ "o", "x" }, "R", function() require("flash").treesitter_search() end, vim.tbl_extend("force", opts, { desc = "Treesitter Search" }))
map("c", "<C-s>", function() require("flash").toggle() end, vim.tbl_extend("force", opts, { desc = "Toggle Flash Search" }))
