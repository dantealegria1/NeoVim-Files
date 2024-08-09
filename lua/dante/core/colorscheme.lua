-- set colorscheme to nightfly with protected call
-- in case it isn't installed
-- --embark es el otro colorscheme
--vim.o.background = "dark"
local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end

-- Set transparent background
vim.cmd[[highlight Normal guibg=none]]
vim.cmd[[highlight NonText guibg=none]]
vim.cmd[[highlight LineNr guibg=none]]

