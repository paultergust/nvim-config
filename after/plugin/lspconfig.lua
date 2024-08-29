local nvim_lsp = require('lspconfig')

nvim_lsp.rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      inlayHints = {
        enable = true,
        typeHints = { enable = true },
        parameterHints = { enable = true },
        chainingHints = { enable = true },
        reborrowHints = { enable = true },
      },
      diagnostics = {
        enable = true,
        experimental = {
          enable = true,
        },
      },
    },
  },
  on_attach = function(client, bufnr)
    -- Enable the LSP's virtual text handler, ensuring error messages show up properly
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  end,
})

