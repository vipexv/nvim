local telescopeBuiltIn = require("telescope.builtin")

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	focusable = false,
	border = "rounded",
})

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

		vim.diagnostic.config({
			virtual_text = true,
			signs = true,
			update_in_insert = false,
			underline = true,
			severity_sort = true,
			float = {
				focusable = false,
				style = "minimal",
				border = "rounded",
				source = true,
				header = "",
				prefix = "",
			},
		})
	end,
})

local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "ts_ls", "svelte", "lua_ls", "tailwindcss", "jsonls", "cssls" },
	handlers = {
		function(server_name)
			require("lspconfig")[server_name].setup({
				capabilities = lsp_capabilities,
			})
		end,
		lua_ls = function()
			local fivem_dirs = vim.fn.glob(vim.fn.stdpath("config") .. "/fivem-library/*", 0, 1)

			local library_paths = {
				[vim.env.VIMRUNTIME] = true,
			}

			for _, dir in ipairs(fivem_dirs) do
				library_paths[dir] = true
			end

			require("lspconfig").lua_ls.setup({
				capabilities = lsp_capabilities,
				root_dir = function()
					return vim.fn.getcwd()
				end,
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
							library = library_paths,
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
							maxPreload = 10000,
							preloadfilesize = 1000,
						},
						telemetry = { enable = false },
					},
				},
			})
		end,
		svelte = function()
			require("lspconfig").svelte.setup({
				capabilities = lsp_capabilities,
				root_dir = function()
					return vim.fn.getcwd()
				end,
			})
		end,
	},
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
	performance = {
		max_view_entries = 64,
		trigger_debounce_time = 500,
		debounce = 150,
		throttle = 60,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp", max_item_count = 5 },
		{ name = "luasnip", max_item_count = 5 },
	}),
	mapping = cmp.mapping.preset.insert({
		["<C-n>"] = cmp.mapping.confirm({ select = true }),
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		["<C-y>"] = cmp.mapping.complete(),
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	experimental = {
		ghost_text = false,
	},
	completion = {
		keyword_length = 1,
		completeopt = "menu,menuone,noinsert",
		max_item_count = 5,
	},
})
