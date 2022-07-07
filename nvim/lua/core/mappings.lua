local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- Map leader key to space.
vim.g.mapleader = " "

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- clear search highlighting
map('n', 'cl', ':nohl <CR>', default_opts)

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle <CR>', default_opts)       -- open/close
map('n', '<leader>r', ':NvimTreeRefresh <CR>', default_opts)  -- refresh
map('n', '<leader>n', ':NvimTreeFindFile <CR>', default_opts) -- search file

-- COC
map("n", "<leader>.", "<Plug>(coc-codeaction)", {})
map("x", "<leader>a", "<Plug>(coc-codeaction-selected)", {})
map("n", "<leader>a", "<Plug>(coc-codeaction-selected)", {})
map("n", "<leader>l", ":CocCommand eslint.executeAutofix<CR>", {})
map("n", "K", ":call CocActionAsync('doHover')<CR>", { silent = true, noremap = true })
map('i', '<C-Space>', 'coc#refresh()', { noremap = false, silent = true, expr = true })
map("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", { noremap = true, silent = true, expr = true })
map("i", "<S-TAB>", "pumvisible() ? '<C-p>' : '<C-h>'", { noremap = true, expr = true })
map("i", "<CR>", "pumvisible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", { noremap = true, silent = true, expr = true })
map('n', '<leader>rn', '<Plug>(coc-rename)', { noremap = false, silent = true })
map('n', '<leader>[g', '<Plug>(coc-diagnostic-prev)', { noremap = false, silent = true })
map('n', '<leader>]g', '<Plug>(coc-diagnostic-next)', { noremap = false, silent = true })
map('n', '<leader>gd', '<Plug>(coc-definition)', { noremap = false, silent = true })
map('n', '<leader>gy', '<Plug>(coc-type-definition)', { noremap = false, silent = true })
map('n', '<leader>gi', '<Plug>(coc-implementation)', { noremap = false, silent = true })
map('n', '<leader>gr', '<Plug>(coc-references)', { noremap = false, silent = true })

-- Bufferline
map('n', '<S-l>', ':BufferLineCycleNext <CR>', default_opts)
map('n', '<S-h>', ':BufferLineCyclePrev <CR>', default_opts)
map("n", "<leader>bc", ":BufferLinePickClose <CR>", default_opts)

-- Telescope
map('n', '<leader>fb', ':Telescope buffers <CR>', default_opts)
map('n', '<leader>ff', ':Telescope find_files <CR>', default_opts)
map('n', '<leader>fa', ':Telescope find_files hidden=true <CR>', default_opts)
map('n', '<leader>fp', ':Telescope media_files <CR>', default_opts)
map('n', '<leader>cm', ':Telescope git_commits <CR>', default_opts)
map('n', '<leader>gt', ':Telescope git_status <CR>', default_opts)
map('n', '<leader>gw', ':lua require("telescope").extensions.git_worktree.git_worktrees() <CR>', default_opts)
map('n', '<leader>fh', ':Telescope help_tags <CR>', default_opts)
map('n', '<leader>fw', ':Telescope live_grep <CR>', default_opts)
map('n', '<leader>fo', ':Telescope oldfiles <CR>', default_opts)

-- comment
map("n", "<leader>/", ":CommentToggle<CR>", default_opts)
map("v", "<leader>/", ":'<,'>CommentToggle<CR>", default_opts)

-- material
vim.api.nvim_set_keymap('n', '<leader>ms', ':lua require("material.functions").toggle_style()<CR>', { noremap = true, silent = true })
