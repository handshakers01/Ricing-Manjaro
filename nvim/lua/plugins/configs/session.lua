local present, session = pcall(require, 'auto-session')

if not present then
  return
end

session.setup({
  log_level = 'info',
})
