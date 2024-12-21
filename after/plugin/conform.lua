require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		typescriptreact = { "prettierd" },
		svelte = { "prettierd" },
		json = { "prettierd" },
		css = { "prettierd" },
		vue = { "prettierd" },
	},
})
