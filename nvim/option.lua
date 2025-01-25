
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.guicursor = ''

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.mouse = 'a'

vim.opt.showmode = false

vim.opt.clipboard = 'unnamedplus'

vim.opt.breakindent = true

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.inccommand = 'split'

vim.opt.cursorline = false

vim.opt.scrolloff = 10

vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'

vim.opt.hlsearch = false
