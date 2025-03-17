-- General Options
vim.opt.guicursor = ""
vim.opt.loadplugins = true
vim.opt.lazyredraw = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = false

-- Backup and Swap Options
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

-- Search and Highlight Options
vim.opt.hlsearch = true
vim.opt.scrolloff = 8

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Cursor and Indentation
vim.opt.cursorline = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Tab and Shift Options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Netrw Settings
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- Timing and Updates
vim.opt.updatetime = 50

-- UI and Status Line
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.laststatus = 0
vim.opt.showtabline = 2

-- Miscellaneous Options
vim.opt.isfname:append("@-@")
vim.g.snacks_animate = false
