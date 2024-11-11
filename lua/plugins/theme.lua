return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			styles = {
				transparency = not vim.g.neovide,
			},
		})
		vim.cmd.colorscheme("rose-pine")
	end,
}
