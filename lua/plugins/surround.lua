return {
    "echasnovski/mini.surround",
    event = { "BufReadPost", "BufNewFile" },
    lazy = true,
    config = function()
        require("mini.surround").setup()
    end,
    version = false,
}
