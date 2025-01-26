return {
	"rose-pine/neovim",
	priority = 1000,
	lazy = false,
	config = function()
		require("rose-pine").setup({
			dark_variant = "moon",
			styles = {
				transparency = not vim.g.neovide,
			},
		})
		vim.cmd.colorscheme("rose-pine")
	end,
}
