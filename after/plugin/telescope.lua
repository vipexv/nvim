local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
	defaults = {
		file_ignore_patterns = { "node_modules", "build", "dist" },
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
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})

telescope.load_extension("fzf")

vim.keymap.set("n", "<F1>", builtin.help_tags)
vim.keymap.set("n", "<leader>pf", builtin.find_files)
vim.keymap.set("n", "<C-p>", builtin.git_files)
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set("n", "<leader>?", builtin.oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader><space>", builtin.buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>fib", function()
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })

vim.keymap.set("n", "<leader>pe", function()
	builtin.find_files({ cwd = vim.fn.expand("%:p:h") })
end)

vim.keymap.set("n", "<leader>pc", function()
	builtin.find_files({ cwd = vim.fn.expand("~") .. "/AppData/Local/nvim/" })
end)

vim.keymap.set("n", "<leader>pg", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>q", builtin.quickfix)
vim.keymap.set("n", "<leader>l", builtin.loclist)
vim.keymap.set("n", "<leader>t", builtin.builtin)
vim.keymap.set("n", "<leader>p", builtin.commands)
vim.keymap.set("n", "<leader>g", builtin.git_status)
vim.keymap.set("v", "<leader>f", builtin.grep_string)
