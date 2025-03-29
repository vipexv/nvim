return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    lazy = true,
    build = ":TSUpdate",
}
