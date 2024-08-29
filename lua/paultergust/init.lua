require("paultergust.set")
require("paultergust.remap")

vim.diagnostic.config({
  signs = true,  -- Show signs in the sign column
  update_in_insert = false,  -- Don't show diagnostics in insert mode
  underline = true,  -- Underline diagnostics
  severity_sort = true,  -- Sort diagnostics by severity
})
