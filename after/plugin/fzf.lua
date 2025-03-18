local fzf = require("fzf-lua")

fzf.setup({
  winopts = {
    height = 1,
    width = 1,
    preview = {
      default = "builtin",
      hidden  = "nohidden",
      layout  = "horizontal",
    },
  },
  files = {
    prompt = "Files❯ ",
    multiprocess = true,
    hidden = true,
    preview = false,
    file_icons = false,
    git_icons = false,
    file_ignore_patterns = { "node_modules", "*.lock", "dist", "yarn.lock", ".git" },
  },
  grep = {
    prompt = "Grep❯ ",
    input_prompt = "Grep > ",
    rg_opts = "--hidden --column --line-number --no-heading",
    preview = "builtin",
  },
  buffers = { prompt = "Buffers❯ " },
  oldfiles = { prompt = "History❯ " },
  keymaps = { prompt = "Keymaps❯ " },
  keymap = {
    fzf = {
      ["ctrl-q"] = "select-all+accept",
    },
  },
})


vim.keymap.set("n", "<leader>pf", function() fzf.files() end, { desc = "Find files" })
vim.keymap.set("n", "<leader>?", function() fzf.oldfiles() end, { desc = "Find recently opened files" })
vim.keymap.set("n", "<leader><space>", function() fzf.buffers() end, { desc = "Find existing buffers" })
vim.keymap.set("n", "<leader>sw", function() fzf.grep_cword() end, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>pc", function() fzf.files({ cwd = vim.fn.expand("~") .. "/AppData/Local/nvim/" }) end)
vim.keymap.set("n", "<leader>pe", function() fzf.files({ cwd = vim.fn.expand("%:p:h") }) end)
vim.keymap.set("n", "<leader>gl", function() fzf.grep({ search = vim.fn.getline(".") }) end,
  { desc = "Grep current line text" })
vim.keymap.set("n", "<leader>pg", function() fzf.grep({ search = vim.fn.input("Grep > ") }) end)
vim.keymap.set("n", "<leader>pb", function()
  fzf.grep({ search = vim.fn.input("Grep > "), cwd = vim.fn.expand("%:p:h") })
end)

vim.keymap.set("n", "<leader>q", function() vim.cmd("copen") end, { desc = "Open quickfix list" })
vim.keymap.set("n", "<leader>l", function() fzf.loclist() end)
vim.keymap.set("n", "<leader>t", function() fzf.builtin() end)
vim.keymap.set("n", "<leader>p", function() fzf.commands() end)
vim.keymap.set("v", "<leader>e", function() fzf.grep_visual() end)
