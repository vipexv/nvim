local name = "vesper"
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.termguicolors = true

pcall(require, "plugins.theme." .. name)

vim.cmd.colorscheme(name)
