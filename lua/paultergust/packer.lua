-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use('wbthomason/packer.nvim')
        use({
                'nvim-telescope/telescope.nvim', tag = '0.1.5',
                requires = { {'nvim-lua/plenary.nvim'} }
        })
        use('AlexvZyl/nordic.nvim')
        use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
        use('mbbill/undotree')
        use('VonHeikemen/lsp-zero.nvim')
        use('williamboman/mason.nvim')
        use('williamboman/mason-lspconfig.nvim')
        use('neovim/nvim-lspconfig')
        use('jremmen/vim-ripgrep')
        use('jremmen/vim-ripgrep')
        use('scrooloose/nerdtree')
        use('scrooloose/nerdcommenter')
end)
