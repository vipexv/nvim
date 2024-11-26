return {
	"ramojus/mellifluous.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("mellifluous").setup({})
		vim.cmd.colorscheme("mellifluous")

		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				vim.cmd("Mellifluous toggle_transparency")
			end,
		})
	end,
}
