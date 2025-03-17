return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"mason.nvim",
		"mason-lspconfig.nvim",
		{
			"ms-jpq/coq_nvim",
			branch = "coq",
			build = ":COQdeps",
			init = function()
				vim.g.coq_settings = {
					auto_start = "shut-up",
					keymap = {
						jump_to_mark = "<c-j>",
					},
				}
			end,
		},
	},
}
