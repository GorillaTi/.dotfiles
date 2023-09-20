----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- clear search highlighting
map('n', '<leader>c', ':nohl<CR>', default_opts)

-- reload configuracion
map('n', '<leader>r', ':source % <CR>', default_opts)

-- reload luafile
map('n', '<leader><C-r>', ':luafile % <CR>', default_opts)

-- fast saving with <leader> and s
map('n', '<leader>w', ':w<CR>', default_opts)
map('i', '<leader>w', '<C-c>:w<CR>', default_opts)

-- fast saving and exit with <leader> and x
map('n', '<leader>x', ':x<CR>', default_opts)
map('i', '<leader>x', '<C-c>:x<CR>', default_opts)

-- close all windows and exit from neovim <leader> Ctrl and q
map('n', '<leader><C-q>', ':quitall<CR>', default_opts)
-- close unsave windows and exit from neovim <leader> and q
map('n', '<leader>q', ':q!<CR>', default_opts)

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------
-- nvim-tree
map('n', '<C-n>', ':Neotree toggle<CR>', default_opts)       -- open/close
--map('n', '<leader>r', ':NvimTreeRefresh<CR>', default_opts)  -- refresh
--map('n', '<leader>n', ':NvimTreeFindFile<CR>', default_opts) -- search file

