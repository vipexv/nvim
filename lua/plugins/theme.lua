return {
	"https://github.com/Yazeed1s/oh-lucy.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.oh_lucy_transparent_background = not vim.g.neovide
		vim.g.oh_lucy_evening_transparent_background = not vim.g.neovide
		vim.cmd.colorscheme("oh-lucy-evening")
	end,
}
