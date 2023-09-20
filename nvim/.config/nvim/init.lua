--[[

  ██╗███╗   ██╗██╗████████╗██╗     ██╗   ██╗ █████╗
  ██║████╗  ██║██║╚══██╔══╝██║     ██║   ██║██╔══██╗
  ██║██╔██╗ ██║██║   ██║   ██║     ██║   ██║███████║
  ██║██║╚██╗██║██║   ██║   ██║     ██║   ██║██╔══██║
  ██║██║ ╚████║██║   ██║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝

Neovim init file

Version: 0.7.1_rev3 - 2021/10/09
Maintainer: Brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]
---------------------------------------------------------------------------------------------------
-- Import Lua Modules
---------------------------------------------------------------------------------------------------

require('settings')                         -- settings
require('keymaps')                          -- keymaps

---------------------------------------------------------------------------------------------------
-- Plugins
---------------------------------------------------------------------------------------------------
require('plugins/packer')                   -- plugins manager

require('plugins/ayu')                      -- color theme
require('plugins/feline')                   -- statusline
require('plugins/neo-tree')                 -- filebrowse
require('plugins/gitsigns')                 -- git decorations
