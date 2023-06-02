-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    
    -- Prevent packer from uninstalling itself
    use 'wbthomason/packer.nvim'
    
    -- Airline (status bar)
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    -- Git status
    use 'xuyuanp/nerdtree-git-plugin'
    
    -- Git wrapper
    use 'tpope/vim-fugitive'
    -- Git diffs signs
    use 'airblade/vim-gitgutter'
    
    -- Escape key
    use {
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup()
        end,
    }
    
    -- Colorschemes
    use 'liuchengxu/space-vim-dark'
    use 'altercation/vim-colors-solarized'
    use 'joshdick/onedark.vim'
    use 'morhetz/gruvbox'
    use 'dylanaraps/wal.vim'
    
    -- Icons
    use 'kyazdani42/nvim-web-devicons'
    
    -- RGB Preview
    use 'lilydjwg/colorizer'
    
    -- File fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Discord rich presence
    use 'andweeb/presence.nvim'

    -- Nice buffer tabs
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    
    -- Tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        -- config = function() require'nvim-tree'.setup {} end
    }
    
    -- Identation helper
    use 'lukas-reineke/indent-blankline.nvim'
    
    -- Commenting
    use 'scrooloose/nerdcommenter'

    -- Better syntax highlighting
    use 'nvim-treesitter/nvim-treesitter'

    -- Close buffer without window
    use 'moll/vim-bbye'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    
    -- Completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'

end)
