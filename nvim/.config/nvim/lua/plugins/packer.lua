-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
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
end)
