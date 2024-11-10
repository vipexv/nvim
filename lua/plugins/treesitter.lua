return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" }, -- More specific than VeryLazy
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "vim", "vimdoc" }, -- Add your commonly used languages
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
