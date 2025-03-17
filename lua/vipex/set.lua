vim.opt.guicursor = ""

vim.opt.loadplugins = true
vim.opt.lazyredraw = true
vim.opt.nu = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.backup = false
vim.opt.writebackup = false

vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.opt.updatetime = 50

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cursorline = true

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.wrap = false

vim.opt.clipboard = "unnamedplus"
vim.opt.hlsearch = true
vim.opt.scrolloff = 999

vim.g.snacks_animate = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.signcolumn = "yes"

vim.opt.laststatus = 0

vim.opt.showtabline = 2
