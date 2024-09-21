vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")
vim.keymap.set("n", "<leader>od", ":!explorer .<CR>", { noremap = true, silent = true })
vim.keymap.set(
	"n",
	"<leader>od",
	":!start explorer " .. vim.fn.expand("%:p:h") .. "<CR>",
	{ noremap = true, silent = true }
)

vim.keymap.set("n", "<A-1>", "<cmd>BufferLineGoToBuffer 1<CR>", { desc = "Go to Buffer 1" })
vim.keymap.set("n", "<A-2>", "<cmd>BufferLineGoToBuffer 2<CR>", { desc = "Go to Buffer 2" })
vim.keymap.set("n", "<A-3>", "<cmd>BufferLineGoToBuffer 3<CR>", { desc = "Go to Buffer 3" })
vim.keymap.set("n", "<A-4>", "<cmd>BufferLineGoToBuffer 4<CR>", { desc = "Go to Buffer 4" })
vim.keymap.set("n", "<A-5>", "<cmd>BufferLineGoToBuffer 5<CR>", { desc = "Go to Buffer 5" })
vim.keymap.set("n", "<A-6>", "<cmd>BufferLineGoToBuffer 6<CR>", { desc = "Go to Buffer 6" })
vim.keymap.set("n", "<A-7>", "<cmd>BufferLineGoToBuffer 7<CR>", { desc = "Go to Buffer 7" })
vim.keymap.set("n", "<A-8>", "<cmd>BufferLineGoToBuffer 8<CR>", { desc = "Go to Buffer 8" })
vim.keymap.set("n", "<A-9>", "<cmd>BufferLineGoToBuffer 9<CR>", { desc = "Go to Buffer 9" })

vim.keymap.set("n", ",c", "<CMD>bp|bd #<CR>", options)

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)
