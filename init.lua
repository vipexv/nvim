vim.loader.enable(true)

vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

require("vipex")

if vim.g.neovide then
	vim.o.guifont = "Iosevka Nerd Font:h15"
	vim.g.neovide_hide_mouse_when_typing = false
	vim.g.neovide_confirm_quit = false
	vim.g.neovide_fullscreen = true
end

vim.cmd.colorscheme("torte")
vim.cmd("highlight Normal ctermbg=none guibg=none")
vim.cmd("highlight NonText ctermbg=none guibg=none")
vim.cmd("highlight LineNr ctermbg=none guibg=none")
vim.cmd("highlight SignColumn ctermbg=none guibg=none")
vim.cmd("highlight StatusLine ctermbg=none guibg=none")
vim.cmd("highlight StatusLineNC ctermbg=none guibg=none")
