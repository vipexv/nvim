local telescopeBuiltIn = require("telescope.builtin")

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
	ensure_installed = { "ts_ls", "svelte" },
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
				settings = {
					Lua = {
						hint = {
							enable = true,
						},
						runtime = {
							version = "lua 5.4",
							nonstandardSymbol = {
								"+=",
								"-=",
								"*=",
								"/=",
								"&=",
								"|=",
								"^=",
								"`",
							},
						},
						diagnostics = {
							globals = { "Citizen", "mysql", "vim", "vector3", "vector2", "vec3", "fx_version" },
						},
						workspace = {
							library = library_paths,

							type = {
								weakUnionCheck = true,
								weakNilCheck = true,
							},
							maxPreload = 100000,
							preloadfilesize = 10000,
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
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
	}),
	mapping = cmp.mapping.preset.insert({
		["<C-y>"] = cmp.mapping.confirm({ select = true }),
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		["<C-Space>"] = cmp.mapping.complete(),
	}),
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
})
