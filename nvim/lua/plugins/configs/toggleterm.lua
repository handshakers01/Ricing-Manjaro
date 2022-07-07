local present, toggleterm = pcall(require, 'toggleterm')

if not present then
  return
end

toggleterm.setup {
  size = 12,
  open_mapping = [[<c-t>]],
  insert_mappings = true,
  close_on_exit = true,
  direction = 'horizontal'
}
