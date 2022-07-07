local present, nvimtree = pcall(require, 'nvim-tree')
local g = vim.g

if not present then
  return
end

vim.o.termguicolors = true

g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_indent_markers = 1
g.nvim_tree_root_folder_modifier = table.concat { ':t:gs?$?/..', string.rep(' ', 1000), '?:gs?^??' }

g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1
}

g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    deleted = '',
    ignored = '◌',
    renamed = '➜',
    staged = '✓',
    unmerged = '',
    unstaged = '✗',
    untracked = '★',
  },
  folder = {
    default = '',
    empty = '', -- 
    empty_rpen = '',
    open = '',
    symlink = '',
    symlink_open = ''
  },
}

nvimtree.setup {
  actions = {
    open_file = {
      window_picker = {
        exclude = {
         filetype = { 'notify', 'packer', 'qf' },
         buftype = { 'terminal' }
        }
      }
    }
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = '',
      info = '',
      warning = '',
      error = '',
    },
  },
  filters = {
    dotfiles = false
  },
  git = {
    enable = true,
    ignore = false
  },
  disable_netrw = true,
  hijack_netrw = true,
  ignore_ft_on_setup = { 'dashboard' },
  auto_close = false,
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = false
  },
  view = {
    allow_resize = true,
    side = 'right',
    width = 35
  }
}
