require("conform").setup({
local map = vim.keymap.set
local highlight = vim.api.nvim_set_hl
local telescope = require("telescope")
local telescope_builtin = require("telescope.builtin")
local use_layout = require("lua.vipex.layouts")

highlight(0, "FloatBorder", { link = "WinSeparator" })
highlight(0, "TelescopePromptCounter", { link = "TelescopeNormal" })
highlight(0, "TelescopeSelection", { link = "TelescopePromptPrefix" })

vim.keymap.set("n", "<leader>pf", telescope_builtin.find_files, {})
vim.keymap.set("n", "<C-p>", telescope_builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	telescope_builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, {})
vim.keymap.set("n", "<leader>fk", function()
	telescope_builtin.find_files(fk_opts)
end, {})

-- New key mapping for <leader>pe
vim.keymap.set("n", "<leader>pe", function()
	telescope_builtin.find_files({ cwd = vim.fn.expand("%:p:h") }) -- Sets the cwd to the current file's directory
end, {})

-- New key mapping for <leader>pc
vim.keymap.set("n", "<leader>pc", function()
	telescope_builtin.find_files({ cwd = "C:/Users/v/AppData/Local/nvim/" })
end, {})

vim.keymap.set("n", "<leader>pr", function()
	telescope_builtin.find_files({ cwd = vim.fn.getcwd() })
end, {})

telescope.setup({
	defaults = {
		border = true,
		prompt_title = false,
		results_title = false,
		color_devicons = false,
		layout_strategy = "horizontal",
		borderchars = {
			prompt = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
			results = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
			preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
		},
		layout_config = {
			bottom_pane = {
				height = 20,
				preview_cutoff = 120,
				prompt_position = "top",
			},
			center = {
				height = 0.4,
				preview_cutoff = 40,
				prompt_position = "top",
				width = 0.7,
			},
			horizontal = {
				prompt_position = "top",
				preview_cutoff = 40,
				height = 0.9,
				width = 0.8,
			},
		},
		sorting_strategy = "ascending",
		prompt_prefix = " ",
		selection_caret = " → ",
		entry_prefix = "   ",
		file_ignore_patterns = { "node_modules", "build" },
		path_display = { "truncate" },
		results_title = false,
		prompt_title = false,
		preview = {
			treesitter = {
				enable = {
					"css",
					"dockerfile",
					"elixir",
					"erlang",
					"fish",
					"html",
					"http",
					"javascript",
					"json",
					"lua",
					"php",
					"python",
					"regex",
					"ruby",
					"rust",
					"scss",
					"svelte",
					"typescript",
					"vue",
					"yaml",
					"markdown",
					"bash",
					"c",
					"cmake",
					"comment",
					"cpp",
					"dart",
					"go",
					"jsdoc",
					"json5",
					"jsonc",
					"llvm",
					"make",
					"ninja",
					"prisma",
					"proto",
					"pug",
					"swift",
					"todotxt",
					"toml",
					"tsx",
				},
			},
		},
		mappings = {
			i = {
				["<esc>"] = require("telescope.actions").close,
				["<C-l>"] = require("telescope.actions").smart_send_to_loclist,
				["<C-q>"] = require("telescope.actions").smart_send_to_qflist,
				["<C-p>"] = require("telescope.actions.layout").toggle_preview,
			},
		},
	},
	extensions = {
		fzf = {
			fuzzy = true,                -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case",    -- options: 'ignore_case', 'respect_case'
		},
	},
})

telescope.load_extension("fzf")

local set_keymap = function(lhs, rhs, mode)
	map(mode or "n", lhs, rhs, { noremap = true })
end

set_keymap("<F1>", use_layout(telescope_builtin.help_tags, "popup_extended"))
set_keymap("<leader>q", use_layout(telescope_builtin.quickfix, "ivy_plus"))
set_keymap("<leader>l", use_layout(telescope_builtin.loclist, "ivy_plus"))
set_keymap("<leader>t", use_layout(telescope_builtin.builtin, "popup_list"))
set_keymap("<leader>o", use_layout(telescope_builtin.find_files, "popup_list"))
set_keymap("<leader>p", use_layout(telescope_builtin.commands, "command_pane"))
set_keymap("<leader>b", use_layout(telescope_builtin.buffers, "popup_extended"))
set_keymap("<leader>g", use_layout(telescope_builtin.git_status, "popup_extended"))
set_keymap("<leader>f", use_layout(telescope_builtin.grep_string, "popup_extended"), "v")
set_keymap(
	"<leader>F",
	use_layout(function(opts)
		opts.find_command = {
			"fd",
			"--type",
			"f",
			"--no-ignore",
			"--hidden",
			"--follow",
			"--exclude",
			".git",
			"--exclude",
			"node_modules",
		}

		telescope_builtin.find_files(opts)
	end, "popup_`st")
)

return use_layout
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		javascript = { "prettierd", "prettier" },
		typescript = { "prettierd", "prettier" },
	},
})
