-- Leader and Local Leader Keys
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- General Keybindings
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Open netrw
vim.keymap.set("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- LSP formatting
vim.keymap.set("n", "<leader>cq", ":call setqflist([])<CR>", { noremap = true, silent = true }) -- Clear quickfix list

-- Searching and Navigation
vim.keymap.set("n", "n", "nzzzv") -- Search next and center
vim.keymap.set("n", "N", "Nzzzv") -- Search previous and center
vim.keymap.set("n", "<Esc>", ":noh<CR>", { silent = true }) -- Clear highlights
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Scroll down and center
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Scroll up and center

-- Window Resizing
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Buffer Navigation
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- Next location in the location list
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- Previous location in the location list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") -- Next item in the quickfix list
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") -- Previous item in the quickfix list

-- Clipboard Management
vim.keymap.set("x", "<leader>p", [["_dP]]) -- Paste without modifying clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- Delete without modifying clipboard

-- Code Actions
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action) -- LSP code actions

-- Miscellaneous
vim.keymap.set("n", "Q", "<nop>") -- Disable macro recording
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>") -- Restart LSP
vim.keymap.set("n", ",c", "<CMD>bp|bd #<CR>") -- Close current buffer and switch to previous

-- Visual Mode Movements
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move selected text down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move selected text up

-- Cursor Positioning and Text Adjustment
vim.keymap.set("n", "J", "mzJ`z") -- Join lines and maintain cursor position
vim.keymap.set("n", "<A-h>", "zH", { desc = "Shift view left" })
vim.keymap.set("n", "<A-l>", "zL", { desc = "Shift view right" })
vim.keymap.set("i", "<A-h>", "<C-o>zH", { desc = "Shift view left in insert mode" })
vim.keymap.set("i", "<A-l>", "<C-o>zL", { desc = "Shift view right in insert mode" })

-- Closing Buffers
vim.keymap.set("n", "<leader>bc", function()
	local current_buf = vim.api.nvim_get_current_buf()
	local buffer_list = vim.api.nvim_list_bufs()

	for i = 1, #buffer_list do
		local buf = buffer_list[i]
		if buf ~= current_buf and vim.api.nvim_buf_is_loaded(buf) then
			vim.api.nvim_buf_delete(buf, { force = true })
		end
	end
end, { desc = "Close all buffers except the active one" })

-- Open Windows File Explorer in current directory
vim.keymap.set("n", "<leader>od", function()
	local path = vim.fn.expand("%:p:h")
	vim.cmd(string.format('silent !start "" "%s"', path))
end, { desc = "Open Windows file explorer in current directory" })

vim.keymap.set("i", "<C-c>", "<Esc>")
