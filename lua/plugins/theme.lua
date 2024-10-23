return {
	"sainnhe/sonokai",
	config = function()
		vim.g.sonokai_enable_italic = true

		if not vim.g.neovide then
			vim.g.sonokai_transparent_background = 1
		end
		vim.cmd("colorscheme sonokai")
	end,
}
