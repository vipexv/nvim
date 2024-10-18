return {
	"sainnhe/sonokai",
	config = function()
		vim.g.sonokai_enable_italic = true
		vim.g.sonokai_transparent_background = 1
		vim.cmd("colorscheme sonokai")
	end,
}
