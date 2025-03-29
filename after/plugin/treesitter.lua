require("nvim-treesitter.configs").setup({
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        disable = function(lang, buf)
            if lang == "rust" then
                return false
            end

            if lang == "cpp" then
                return false
            end

            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))

            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,

        additional_vim_regex_highlighting = false,
    },
})
