return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'tomasr/molokai'
    
    -- PDE
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
end)

