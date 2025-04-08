return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {

        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "hrsh7th/nvim-cmp",
                event = { "InsertEnter" },
                lazy = false,
                dependencies = {
                    { "hrsh7th/cmp-nvim-lsp", event = "InsertEnter" },
                },
            },
        },
    }
}
