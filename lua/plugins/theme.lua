return {
	"sainnhe/sonokai",
	lazy = false,
	priority = 1000,
	config = function(_, opts)
		vim.g.sonokai_style = "espresso" -- "default, atlantis, andromeda, shusia, maia, espresso"
		vim.g.sonokai_transparent_background = 2
		vim.cmd("colorscheme sonokai")
	end,
}
