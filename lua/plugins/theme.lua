return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			transparent = not vim.g.neovidde,
			theme = "wave",
			background = {
				dark = "dragon",
				light = "lotus",
			},
		})
		vim.cmd.colorscheme("kanagawa")
	end,
}
