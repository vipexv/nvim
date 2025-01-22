vim.loader.enable(true)
require("vipex")

if vim.g.neovide then
	vim.o.guifont = "Iosevka Nerd Font:h15"
	vim.g.neovide_hide_mouse_when_typing = false
	vim.g.neovide_confirm_quit = false
	vim.g.neovide_fullscreen = true
end
