return {
	"ribru17/bamboo.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("bamboo").setup({
			transparent = not vim.g.neovide,
		})
		require("bamboo").load()
	end,
}
