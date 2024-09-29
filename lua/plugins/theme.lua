return {
	"ramojus/mellifluous.nvim",
	config = function()
		require("mellifluous").setup({
			transparent_background = {
				enabled = true,
				floating_windows = true,
				telescope = true,
				fieldset = true,
				cursor_line = true,
				statusline = true,
			},
		})
		vim.cmd("colorscheme mellifluous")
	end,
}
