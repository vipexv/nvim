require("vipex.remap")
require("vipex.set")

vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("lazy").setup({
	spec = {
		{ import = "plugins" },
		{
			"neovim/nvim-lspconfig",
			event = { "BufReadPre", "BufNewFile" },
			dependencies = { "mason.nvim", "mason-lspconfig.nvim" },
		},
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
		{
			"hrsh7th/nvim-cmp",
			lazy = false,
			event = { "InsertEnter" },
			dependencies = {
				-- { "hrsh7th/cmp-buffer", event = "InsertEnter" },
				{ "hrsh7th/cmp-nvim-lsp", event = "InsertEnter" },
				{
					"L3MON4D3/LuaSnip",
					version = "v2.*",
					build = (not jit.os:find("Windows")) and "make install_jsregexp" or nil,
				},
				{ "saadparwaiz1/cmp_luasnip", event = "InsertEnter" },
			},
		},
	},

	defaults = {
		lazy = true,
		version = false,
	},
	performance = {
		cache = {
			enabled = true,
		},
		reset_packpath = true,
		reset_event = "VeryLazy",
		preload_modules = { "vim.treesitter", "vim.lsp" },
		rtp = {
			reset = true,
			disabled_plugins = {
				"gzip",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
				"matchparen",
				"spellfile_plugin",
				"syntax",
				"remote_plugins",
				"health",
				"logiPat",
			},
		},
	},
	change_detection = {
		notify = false,
	},
	checker = { enabled = false },
})

vim.api.nvim_create_autocmd("User", {
	pattern = "LazyVimStarted",
	callback = function()
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			command = [[%s/\s\+$//e]],
		})
	end,
})
