local present, treesitter = pcall(require, 'nvim-treesitter.configs')

if not present then
  return
end

treesitter.setup {
  autotag = {
    enable = true
  },
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true,
    use_languagetree = true,
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true
  },
  matchup = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil
  }
}

vim.cmd
[[
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=99
]]
