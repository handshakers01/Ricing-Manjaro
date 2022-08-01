-- [[ plug.lua ]]

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use { 'mhinz/vim-startify' }                       -- start screen
    use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
    use {
        'nvim-lualine/lualine.nvim',                     -- statusline
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }
    use { "ellisonleao/gruvbox.nvim" }
    -- use { 'Mofiqul/dracula.nvim' }
    -- [[ Snip... ]]
    -- [[ Dev ]]
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0', -- fuzzy finder
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'majutsushi/tagbar' }                        -- code structure
    use { 'Yggdroot/indentLine' }                      -- see indentation
    use { 'tpope/vim-fugitive' }                       -- git integration
    use { 'junegunn/gv.vim' }                          -- commit history
    use { 'windwp/nvim-autopairs' } 
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'lewis6991/impatient.nvim'
    use 'tpope/vim-surround'
end) 
