local opt = vim.opt

-- Numeros
opt.relativenumber = true
opt.number = true 

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

--Appearacen
opt.termguicolors = true
opt.background = 'dark'

opt.clipboard:append('unnamedplus')

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append('-')
opt.iskeyword:append('_')

