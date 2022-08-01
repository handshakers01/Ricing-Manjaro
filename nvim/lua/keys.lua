--[[ keys.lua ]]
--local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
-- map('i', 'jk', '', {})

-- Toggle nvim-tree
-- map('n', 'n', [[:NvimTreeToggle]], {})

-- Toggle more plugins
-- map('n', 'l', [[:IndentLinesToggle]], {})
-- map('n', 't', [[:TagbarToggle]], {})
-- map('n', 'ff', [[:Telescope find_files]], {})

local vc = vim.cmd
vc([[ map q :q<CR> ]])
vc([[ nmap <TAB> :BufferLineCyclePrev <CR>]])
vc([[ nmap <C-n> :NvimTreeToggle<CR>]])
vc([[ nmap ff : :Telescope find_files theme=dropdown <CR>]])
