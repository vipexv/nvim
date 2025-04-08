local telescopeBuiltIn = require("telescope.builtin")
local util = require("lspconfig.util")

vim.lsp.inlay_hint.enable(true)

vim.diagnostic.config({
    underline = true,
    virtual_text = {
        spacing = 4,
        source = "if_many",
        prefix = "●",
    },
    severity_sort = true,
    update_in_insert = false,
    float = {
        focusable = false,
        border = "rounded",
    },
})

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("user_lsp_attach", { clear = true }),
    callback = function(event)
        local opts = { buffer = event.buf }

        vim.keymap.set("n", "gd", function()
            telescopeBuiltIn.lsp_definitions()
        end, opts)
        vim.keymap.set("n", "K", function()
            vim.lsp.buf.hover()
        end, opts)
        vim.keymap.set("n", "<leader>vws", function()
            vim.lsp.buf.workspace_symbol()
        end, opts)

        vim.keymap.set("n", "<leader>vd", function()
            vim.diagnostic.open_float()
        end, opts)

        vim.keymap.set("n", "[d", function()
            vim.diagnostic.goto_next()
        end, opts)

        vim.keymap.set("n", "]d", function()
            vim.diagnostic.goto_prev()
        end, opts)

        vim.keymap.set("n", "<leader>vca", function()
            vim.lsp.buf.code_action()
        end, opts)

        vim.keymap.set("n", "<leader>fr", function()
            telescopeBuiltIn.lsp_references()
        end, opts)

        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

        vim.keymap.set("i", "<C-h>", function()
            vim.lsp.buf.signature_help()
        end, opts)

        vim.keymap.set("n", "<leader>ve", function()
            vim.diagnostic.setloclist()
        end, opts)
    end,
})

local lspCapabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = { "ts_ls", "svelte", "lua_ls", "tailwindcss", "jsonls", "cssls" },
    handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup({
                capabilities = lspCapabilities,
            })
        end,

        lua_ls = function()
            local fivemDirectories = vim.fn.glob(vim.fn.stdpath("config") .. "/fivem-library/*", false, true)

            local libraryPaths = {
                [vim.env.VIMRUNTIME] = true,
            }

            for i = 1, #fivemDirectories do
                libraryPaths[fivemDirectories[i]] = true
            end

            require("lspconfig").lua_ls.setup({
                capabilities = lspCapabilities,
                root_dir = util.root_pattern("package.json", "tsconfig.json", ".git", ".stylua", ".luarc.json", "go.mod"),
                settings = {
                    Lua = {
                        hint = {
                            enable = true,
                        },
                        runtime = {
                            pathStrict = true,
                            version = "Lua 5.4",
                            nonstandardSymbol = {
                                "/**/",
                                "`",
                                "+=",
                                "-=",
                                "*=",
                                "/=",
                                "<<=",
                                ">>=",
                                "&=",
                                "|=",
                                "^=",
                            },
                        },

                        diagnostics = {
                            globals = { "Citizen", "mysql", "vim", "vector3", "vector2", "vec3", "fx_version", "lib" },
                        },

                        workspace = {
                            library = libraryPaths,
                            type = {
                                weakUnionCheck = true,
                                weakNilCheck = true,
                            },
                            ignoreDir = {
                                ".vscode",
                                ".vs",
                                "*-build",
                                "node_modules",
                                "web",
                                ".git",
                                ".github",
                                "dist",
                                "build",
                            },
                            checkThirdParty = false,
                            maxPreload = 2000,
                            preloadfilesize = 500,
                        },
                        telemetry = { enable = false },
                        format = {
                            defaultConfig = {
                                indent_style = "tab",
                                tab_width = "4",
                                max_line_length = 200
                            }
                        }
                    },
                },
            })
        end,

        svelte = function()
            require("lspconfig").svelte.setup({
                capabilities = lspCapabilities,
                root_dir = function()
                    return vim.fn.getcwd()
                end,
            })
        end,
    },
})

local cmp = require("cmp")

cmp.setup({
    performance = {
        max_view_entries = 64,
        trigger_debounce_time = 500,
        debounce = 150,
        throttle = 60,
    },
    sources = cmp.config.sources({
        { name = "nvim_lsp", max_item_count = 10 },
    }),
    mapping = cmp.mapping.preset.insert({
        ["<C-n>"] = cmp.mapping.confirm({ select = true }),
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        ["<C-e>"] = cmp.mapping.complete(),
    }),
    window = {
        completion = {
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
            col_offset = -3,
            side_padding = 0,
        },
    },
    experimental = {
        ghost_text = false,
    },
    completion = {
        keyword_length = 2,
        autocomplete = { require("cmp.types").cmp.TriggerEvent.TextChanged },
        completeopt = "menu,menuone,noinsert",
        max_item_count = 5,
    },
})
