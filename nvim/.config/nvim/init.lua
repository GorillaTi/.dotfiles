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

-- UI
require('plugins/ayu')                      -- color theme
require('plugins/feline')                   -- statusline
require('plugins/neo-tree')                 -- filebrowse
require('plugins/gitsigns')                 -- git decorations
--require('plugins/cokeline')                 -- buffers (tabs)
require('plugins/sidebar-nvim')             -- sidebar
require('plugins/vista')                    -- tag viewer

--  Utils
require('plugins/nvim-lspconfig')           -- LSP settings
require('plugins/autosave')                 -- autosave
require('plugins/nvim-autopairs')           -- autopairs
require('plugins/luasnip')                  -- snippets
require('plugins/nvim-cmp')                 -- autocomplete
require('plugins/todo-comments')            -- comments
