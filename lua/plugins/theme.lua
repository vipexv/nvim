return {
	"wtfox/jellybeans.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		require("jellybeans").setup({
			transparent = true,
		})
		vim.cmd.colorscheme("jellybeans")
	end,
}
