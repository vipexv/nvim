vim.loader.enable(true)

vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

require("vipex")

vim.g.vim_svelte_plugin_load_full_syntax = 1
vim.g.vim_svelte_plugin_use_typescript = 1

if vim.g.neovide then
	vim.o.guifont = "Iosevka Nerd Font:h15"
	vim.g.neovide_hide_mouse_when_typing = false
	vim.g.neovide_confirm_quit = false
	vim.g.neovide_fullscreen = true
end

vim.cmd([[
  augroup TransparentEOF
    autocmd!
    autocmd ColorScheme * highlight EndOfBuffer guibg=none ctermbg=none
    autocmd ColorScheme * highlight VertSplit guibg=none ctermbg=none
  augroup END
]])

vim.cmd([[
  augroup TransparentTabline
    autocmd!
    autocmd ColorScheme * highlight TabLine     guibg=none ctermbg=none
    autocmd ColorScheme * highlight TabLineSel  guibg=none ctermbg=none
    autocmd ColorScheme * highlight TabLineFill guibg=none ctermbg=none
  augroup END
]])

vim.cmd.colorscheme("desert")
vim.cmd("highlight Normal ctermbg=none guibg=none")
vim.cmd("highlight NonText ctermbg=none guibg=none")
vim.cmd("highlight LineNr ctermbg=none guibg=none")
vim.cmd("highlight SignColumn ctermbg=none guibg=none")
-- vim.cmd("highlight StatusLine ctermbg=none guibg=none")
-- vim.cmd("highlight StatusLineNC ctermbg=none guibg=none")
vim.cmd("highlight CursorLine ctermbg=none guibg=none")
vim.cmd("highlight Pmenu guibg=none")
vim.cmd("highlight FloatBorder guibg=none guifg=none")
vim.cmd("highlight NormalFloat guibg=none")
vim.cmd("highlight CursorLineNr ctermbg=none guibg=none guifg=#ffffff")
