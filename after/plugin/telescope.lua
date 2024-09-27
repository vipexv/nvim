local map = vim.keymap.set
local highlight = vim.api.nvim_set_hl
local telescope = require("telescope")
local telescope_builtin = require("telescope.builtin")
local use_layout = require("vipex.layouts")
local fb_actions = require("telescope._extensions.file_browser.actions")

highlight(0, "FloatBorder", { link = "WinSeparator" })
highlight(0, "TelescopePromptCounter", { link = "TelescopeNormal" })
highlight(0, "TelescopeSelection", { link = "TelescopePromptPrefix" })

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
					"typescriptreact",
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
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- options: 'ignore_case', 'respect_case'
		},
		file_browser = {
			path = vim.loop.cwd(),
			cwd = vim.loop.cwd(),
			cwd_to_path = false,
			grouped = false,
			files = true,
			add_dirs = true,
			depth = 1,
			auto_depth = false,
			select_buffer = false,
			hidden = { file_browser = false, folder_browser = false },
			respect_gitignore = vim.fn.executable("fd") == 1,
			no_ignore = false,
			follow_symlinks = false,
			browse_files = require("telescope._extensions.file_browser.finders").browse_files,
			browse_folders = require("telescope._extensions.file_browser.finders").browse_folders,
			hide_parent_dir = false,
			collapse_dirs = false,
			prompt_path = false,
			quiet = false,
			dir_icon = "",
			dir_icon_hl = "Default",
			display_stat = { date = true, size = true, mode = true },
			hijack_netrw = false,
			use_fd = true,
			git_status = false,
			mappings = {
				["i"] = {
					["<A-c>"] = fb_actions.create,
					["<S-CR>"] = fb_actions.create_from_prompt,
					["<A-r>"] = fb_actions.rename,
					["<A-m>"] = fb_actions.move,
					["<A-y>"] = fb_actions.copy,
					["<A-d>"] = fb_actions.remove,
					["<C-o>"] = fb_actions.open,
					["<C-g>"] = fb_actions.goto_parent_dir,
					["<C-e>"] = fb_actions.goto_home_dir,
					["<C-w>"] = fb_actions.goto_cwd,
					["<C-t>"] = fb_actions.change_cwd,
					["<C-f>"] = fb_actions.toggle_browser,
					["<C-h>"] = fb_actions.toggle_hidden,
					["<C-s>"] = fb_actions.toggle_all,
					["<bs>"] = fb_actions.backspace,
				},
				["n"] = {
					["c"] = fb_actions.create,
					["r"] = fb_actions.rename,
					["m"] = fb_actions.move,
					["y"] = fb_actions.copy,
					["d"] = fb_actions.remove,
					["o"] = fb_actions.open,
					["g"] = fb_actions.goto_parent_dir,
					["e"] = fb_actions.goto_home_dir,
					["w"] = fb_actions.goto_cwd,
					["t"] = fb_actions.change_cwd,
					["f"] = fb_actions.toggle_browser,
					["h"] = fb_actions.toggle_hidden,
					["s"] = fb_actions.toggle_all,
				},
			},
		},
	},
})

telescope.load_extension("fzf")
telescope.load_extension("file_browser")

local set_keymap = function(lhs, rhs, mode)
	map(mode or "n", lhs, rhs, { noremap = true })
end

set_keymap("<F1>", use_layout(telescope_builtin.help_tags, "popup_extended"))
set_keymap("<leader>pf", use_layout(telescope_builtin.find_files, "popup_extended"))
set_keymap("<C-p>", use_layout(telescope_builtin.git_files, "popup_extended"))
set_keymap(
	"<leader>ps",
	use_layout(function()
		telescope_builtin.grep_string({ search = vim.fn.input("Grep > ") })
	end, "popup_extended")
)

set_keymap(
	"<leader>fk",
	use_layout(function()
		telescope_builtin.find_files(fk_opts)
	end, "popup_extended")
)

-- New key mapping for <leader>pe
set_keymap(
	"<leader>pe",
	use_layout(function()
		telescope_builtin.find_files({ cwd = vim.fn.expand("%:p:h") })
	end, "popup_extended")
)

-- New key mapping for <leader>pc
set_keymap(
	"<leader>pc",
	use_layout(function()
		telescope_builtin.find_files({ cwd = "C:/Users/v/AppData/Local/nvim/" })
	end, "popup_extended")
)

set_keymap(
	"<leader>pr",
	use_layout(function()
		telescope_builtin.find_files({ cwd = vim.fn.getcwd() })
	end, "popup_extended")
)

set_keymap(
	"<leader>pg",
	use_layout(function()
		telescope_builtin.grep_string({ cwd = vim.fn.expand("%:p:h"), search = vim.fn.input("Grep > ") })
	end, "popup_extended")
)

set_keymap("<leader>q", use_layout(telescope_builtin.quickfix, "ivy_plus"))
set_keymap("<leader>l", use_layout(telescope_builtin.loclist, "ivy_plus"))
set_keymap("<leader>t", use_layout(telescope_builtin.builtin, "popup_list"))
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
	end, "popup_st")
)

return use_layout
