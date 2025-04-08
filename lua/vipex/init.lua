require("vipex.remap")
require("vipex.set")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local uv = vim.uv or vim.loop

if not uv.fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local clone_cmd = { "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }
    local out = vim.fn.system(clone_cmd)

    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        { import = "plugins" },
    },
    defaults = {
        lazy = true,
        version = false,
    },
    performance = {
        cache = { enabled = true },
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
    change_detection = { notify = false },
    checker = { enabled = false },
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        local clients = vim.lsp.get_clients({ bufnr = args.buf })

        for i = 1, #clients do
            local client = clients[i]
            if client:supports_method("textDocument/formatting") then
                vim.lsp.buf.format({
                    async = false,
                    filter = function(c) return c.id == client.id end,
                    timeout_ms = 2000
                })
                break
            end
        end
    end,
})
