local present, trouble = pcall(require, 'trouble')

if not present then
  return
end

trouble.setup {
  position = 'bottom',
  height = 10,
  icons = true,
  mode = 'loclist',
  indent_lines = true,
  auto_open = true,
  auto_close = true
}
