return {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		-- vim.opt.background = "dark"
		require("gruvbox").setup({
			transparent_mode = not vim.g.neovide,
		})
		vim.cmd.colorscheme("gruvbox")

		-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	end,
}
