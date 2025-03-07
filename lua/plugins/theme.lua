return {
	"catppuccin/nvim",
	priority = 1000,
	lazy = false,
	config = function()
		require("catppuccin").setup({
			flavour = "Mocha",
			transparent_background = true,
			term_colors = true,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
