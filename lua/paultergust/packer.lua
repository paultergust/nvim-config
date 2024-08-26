local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])

-- Use a protected call so we don"t error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    print("Packer is not installed")
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

packer.startup(function(use)
    -- packer can manage itself!
    use "wbthomason/packer.nvim"

    -- statusbar
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }
    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    })
    use('rebelot/kanagawa.nvim')
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('mbbill/undotree')
    use('VonHeikemen/lsp-zero.nvim')
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('neovim/nvim-lspconfig')
    use('jremmen/vim-ripgrep')
    use('scrooloose/nerdtree')
    use('preservim/nerdcommenter')
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
    use('lewis6991/gitsigns.nvim')
    use('mfussenegger/nvim-dap')
    use('rcarriga/nvim-dap-ui')
    use('mfussenegger/nvim-dap-python')
    use('nvim-neotest/nvim-nio')
    use('MeanderingProgrammer/markdown.nvim')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-cmdline')
    use('hrsh7th/nvim-cmp')
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
    use({
        "L3MON4D3/LuaSnip",
        tag = "v2.*",
        run = "make install_jsregexp"
    })

    -- Automatically run packer.clean() followed by packer.update() after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
