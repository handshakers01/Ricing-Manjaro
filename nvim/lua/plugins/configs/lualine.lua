local present, lualine = pcall(require, 'lualine')

if not present then
  return
end

lualine.setup {
  options = {
    theme = 'tokyonight',
    section_separators = '',
    component_separators = '',
    disabled_filetypes = {
      'toggleterm',
      'NvimTree'
    }
  },
  sections = {
    lualine_c = {
      require('auto-session-library').current_session_name,
    }
  }
}
