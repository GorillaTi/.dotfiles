---------------------------------------------------------
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
map('n', '<leader>rs', ':source % <CR>', default_opts)

-- reload luafile
map('n', '<leader>rl', ':luafile % <CR>', default_opts)

-- fast saving with <leader> and s
map('n', '<leader>w', ':w<CR>', default_opts)
map('i', '<leader>w', '<C-c>:w<CR>', default_opts)

-- fast saving and exit with <leader> and x
map('n', '<leader>x', ':x<CR>', default_opts)
map('i', '<leader>x', '<C-c>:x<CR>', default_opts)

-- close all windows and exit from neovim <leader> Ctrl and q
map('n', '<leader>qa', ':quitall<CR>', default_opts)
-- close unsave windows and exit from neovim <leader> and q
map('n', '<leader>q', ':q!<CR>', default_opts)

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------
-- Neovim
map('n', '<C-n>', ':Neotree toggle<CR>', default_opts)       -- open/close
-- nvim-tree
--map('n', '<leader>r', ':NvimTreeRefresh<CR>', default_opts)  -- refresh
--map('n', '<leader>n', ':NvimTreeFindFile<CR>', default_opts) -- search file

-- cokeline
map('n', '<S-Tab>',   '<Plug>(cokeline-focus-prev)',  { silent = true })
map('n', '<Tab>',     '<Plug>(cokeline-focus-next)',  { silent = true })
map('n', '<Leader>p', '<Plug>(cokeline-switch-prev)', { silent = true })
map('n', '<Leader>n', '<Plug>(cokeline-switch-next)', { silent = true })

for i = 1,9 do
  map('n', ('<F%s>'):format(i),      ('<Plug>(cokeline-focus-%s)'):format(i),  { silent = true })
  map('n', ('<Leader>%s'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i), { silent = true })
end

--nvim-lazygit
map('n', '<C-g>', ':LazyGit<CR>', default_opts)             -- open/close

-- Vista tag-viewer
map('n', '<C-q>', ':Vista!!<CR>', default_opts)   -- open/close
map('i', '<C-q>', ':Vista!!<CR>', default_opts)   -- open/close
map('n', '<leader>m', ':Vista!!<CR>', default_opts)

map('n', '<leader>tf', ':Telescope file_browser<CR>', default_opts)
map('n', '<leader>ts', ':Telescope symbols<CR>', default_opts)

-- on hesitation, bring up the panel
map('n', '<C-s>', ':SidebarNvimToggle<CR>', default_opts)

-- Trouble
map("n", "<leader>zx", "<cmd>Trouble<CR>", {silent = true, noremap = true})
map("n", "<leader>zw", "<cmd>Trouble workspace_diagnostics<CR>", {silent = true, noremap = true})
map("n", "<leader>zd", "<cmd>Trouble document_diagnostics<CR>", {silent = true, noremap = true})
map("n", "<leader>zl", "<cmd>Trouble loclist<CR>", {silent = true, noremap = true})
map("n", "<leader>zq", "<cmd>Trouble quickfix<CR>", {silent = true, noremap = true})
map("n", "gR", "<cmd>Trouble lsp_references<CR>", {silent = true, noremap = true})

-- telescope-dap
map('n', '<leader>dcc', '<cmd>lua require"telescope".extensions.dap.commands{}<CR>', default_opts)
map('n', '<leader>dco', '<cmd>lua require"telescope".extensions.dap.configurations{}<CR>', default_opts)
map('n', '<leader>dlb', '<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>', default_opts)
map('n', '<leader>dv', '<cmd>lua require"telescope".extensions.dap.variables{}<CR>', default_opts)
map('n', '<leader>df', '<cmd>lua require"telescope".extensions.dap.frames{}<CR>', default_opts)

--nvim-fzf-lua
map('n', '<C-p>', ':FzfLua files<CR>', default_opts)       -- open/close
