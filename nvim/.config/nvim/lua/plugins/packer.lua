-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

--- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
return require('packer').startup(function(use)
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    -- package manager
    use 'wbthomason/packer.nvim'

    -- colorschemes
    use 'Shatur/neovim-ayu'

    -- icons
--    use 'kyazdani42/nvim-web-devicons'
--    use 'adelarsq/vim-devicons-emoji'

    -- file explorer
    --use 'kyazdani42/nvim-tree.lua'
    
    -- file explorer
    use {
        'nvim-neo-tree/neo-tree.nvim',
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim"
        },
    }
    use 'sidebar-nvim/sidebar.nvim'

    -- git labels
    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('gitsigns').setup()
        end
    }
    -- help for git
    use 'kdheepak/lazygit.nvim'

    -- diffview
    use {
        'sindrets/diffview.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- statusline
    -- lualine
    --use {
    --  'nvim-lualine/lualine.nvim',
    --  requires = { 'kyazdani42/nvim-web-devicons' , opt = true},
    --}
    -- feline
    use ('Iron-E/nvim-highlite')
    use {
        'feline-nvim/feline.nvim',
        requires = {
            'gitsigns.nvim',
            'nvim-web-devicons'
        },
    }

    -- cokeline - buffers
    --use {
    --    'noib3/nvim-cokeline',
    --    requires = 'kyazdani42/nvim-web-devicons',
    --}
    -- TODO: remoxe
    -- FIX: fix

    -- LSP
    use 'neovim/nvim-lspconfig'
    use {
        'lvimuser/lsp-inlayhints.nvim',
        config = function()
            require("lsp-inlayhints").setup()
        end
    }
    
    use 'folke/lsp-colors.nvim'
    use {
        'folke/trouble.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
        }
    }
    use 'kkoomen/vim-doge'

     -- autosave
    use "Pocco81/auto-save.nvim"

    -- autopair
    use 'windwp/nvim-autopairs'

    -- autocomplete
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'L3MON4D3/LuaSnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
            'f3fora/cmp-spell',
            'saadparwaiz1/cmp_luasnip',
        },
    }

    use 'rafamadriz/friendly-snippets'
    -- use {'tzachar/cmp-tabnine',
    --      run='./install.sh',
    --      requires = 'hrsh7th/nvim-cmp'
    -- }
    use {'onsails/lspkind-nvim'}

    -- tagviewer
    use 'liuchengxu/vista.vim'

    -- Todo-comments
    use {
        "folke/todo-comments.nvim",
        requires = {"nvim-lua/plenary.nvim"},  
    }

    -- Nvim-colorizer
    use {'norcalli/nvim-colorizer.lua'}

    -- treesitter interface
    use {'nvim-treesitter/nvim-treesitter'}
    use {
        'nvim-treesitter/nvim-tree-docs', 
        requires = {'nvim-treesitter/nvim-treesitter'},
    }
    use {
        'p00f/nvim-ts-rainbow',
        requires = {'nvim-treesitter/nvim-treesitter'},
    }

    -- fuzzy finder
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-ui-select.nvim'
    use 'nvim-telescope/telescope-symbols.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'nvim-telescope/telescope-dap.nvim'
    use 'ibhagwan/fzf-lua'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
