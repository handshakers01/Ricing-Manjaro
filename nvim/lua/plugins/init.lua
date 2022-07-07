local present, packer = pcall(require, 'plugins.packerInit')

if not present then
  return false
end

local use = packer.use

return packer.startup(function()
  use {
    'wbthomason/packer.nvim',
    event = 'VimEnter'
  }

  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'

  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufEnter',
    run = ':TSUpdate',
    config = function ()
      require('plugins.configs.treesitter')
    end
  }

  use {
    'p00f/nvim-ts-rainbow',
    after = 'nvim-treesitter'
  }

  use {
    'folke/trouble.nvim',
    config = function ()
      require('plugins.configs.trouble')
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = function ()
      require('plugins.configs.lualine')
    end
  }

  use {
    'akinsho/bufferline.nvim',
    config = function ()
      require('plugins.configs.bufferline')
    end
  }

  use {
    'windwp/nvim-ts-autotag',
    after = 'nvim-treesitter',
    config = function ()
      require('plugins.configs.autotag')
    end
  }

  use {
    'stevearc/dressing.nvim'
  }

  use 'liuchengxu/vista.vim'

  use {
    'petertriho/nvim-scrollbar',
    config = function ()
      require('plugins.configs.scrollbar')
    end
  }

  -- color scheme
  use 'Mofiqul/vscode.nvim'
  use 'navarasu/onedark.nvim'
  use 'folke/tokyonight.nvim'
  use 'eddyekofo94/gruvbox-flat.nvim'

  use {
    'marko-cerovac/material.nvim',
    config = [[ require('plugins.configs.material') ]]
  }

  use {
    'kyazdani42/nvim-web-devicons',
    config = function ()
      require('plugins.configs.icons')
    end
  }

  use {
    'kyazdani42/nvim-tree.lua',
    config = function ()
      require('plugins.configs.nvim-tree')
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = function ()
      require('plugins.configs.gitsigns')
    end
  }

  use {
    'ThePrimeagen/git-worktree.nvim',
    config = function ()
      require('git-worktree')
    end
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufRead',
    config = function ()
      require('plugins.configs.blankline')
    end
  }

  use {
    'norcalli/nvim-colorizer.lua',
    config = function ()
      require('plugins.configs.colorizer')
    end
  }

  use {
    'windwp/nvim-autopairs',
    config = function ()
      require('plugins.configs.autopairs')
    end
  }

  use 'andymass/vim-matchup'

  use 'editorconfig/editorconfig-vim'

  use {
    'akinsho/toggleterm.nvim',
    config = function ()
      require('plugins.configs.toggleterm')
    end
  }

  use {
    'nvim-telescope/telescope.nvim',
    config = function ()
      require('plugins.configs.telescope')
    end
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  use 'nvim-telescope/telescope-media-files.nvim'

  use {
    'terrortylor/nvim-comment',
    config = function ()
      require('nvim_comment').setup({
        hook = function()
          require("ts_context_commentstring.internal").update_commentstring()
        end,
      })
    end
  }

  use {
    'JoosepAlviste/nvim-ts-context-commentstring',
    after = 'nvim-treesitter',
    config = function ()
      require'nvim-treesitter.configs'.setup {
        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        }
      }
    end
  }

  use {
    'glepnir/dashboard-nvim',
    config = function ()
      require('plugins.configs.dashboard')
    end
  }

  use {
    'karb94/neoscroll.nvim',
    config = function ()
      require('plugins.configs.neoscroll')
    end
  }

  use {
    'rmagatti/auto-session',
    config = function()
      require('plugins.configs.session')
    end
  }

  use 'tpope/vim-surround'

  use 'github/copilot.vim'

  use 'andweeb/presence.nvim'

  -- PlantUML
  use 'aklt/plantuml-syntax'
  use 'tyru/open-browser.vim'
  use 'weirongxu/plantuml-previewer.vim'

  use 'wakatime/vim-wakatime'
end)
