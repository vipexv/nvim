local builtin = require("telescope.builtin")

-- Existing key mappings
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, {})
vim.keymap.set("n", "<leader>fk", function()
	builtin.find_files(fk_opts)
end, {})

-- New key mapping for <leader>pe
vim.keymap.set("n", "<leader>pe", function()
	builtin.find_files({ cwd = vim.fn.expand("%:p:h") }) -- Sets the cwd to the current file's directory
end, {})

-- New key mapping for <leader>pc
vim.keymap.set("n", "<leader>pc", function()
	builtin.find_files({ cwd = "C:/Users/v/AppData/Local/nvim/" })
end, {})

vim.keymap.set("n", "<leader>pr", function()
	builtin.find_files({ cwd = vim.fn.getcwd() })
end, {})
