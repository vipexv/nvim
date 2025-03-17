local telescope_builtin = require("telescope.builtin")
local coq = require("coq")

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
		local buffer_opts = { buffer = event.buf }

		-- Navigation & Documentation
		vim.keymap.set("n", "gd", telescope_builtin.lsp_definitions, buffer_opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, buffer_opts)
		vim.keymap.set("n", "<leader>fr", telescope_builtin.lsp_references, buffer_opts)

		-- Diagnostics
		vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, buffer_opts)
		vim.keymap.set("n", "[d", vim.diagnostic.goto_next, buffer_opts)
		vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, buffer_opts)
		vim.keymap.set("n", "<leader>ve", vim.diagnostic.setloclist, buffer_opts)

		-- Code Actions
		vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, buffer_opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, buffer_opts)
		vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, buffer_opts)

		-- Workspace Symbols
		vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, buffer_opts)
	end,
})

require("mason").setup({})

require("mason-lspconfig").setup({
	ensure_installed = {
		"ts_ls",
		"svelte",
		"lua_ls",
		"tailwindcss",
		"jsonls",
		"cssls",
	},
	handlers = {
		function(server_name)
			require("lspconfig")[server_name].setup(coq.lsp_ensure_capabilities({}))
		end,

		lua_ls = function()
			local fivem_dirs = vim.fn.glob(vim.fn.stdpath("config") .. "/fivem-library/*", 0, 1)

			local library_paths = { [vim.env.VIMRUNTIME] = true }
			for _, dir in ipairs(fivem_dirs) do
				library_paths[dir] = true
			end

			require("lspconfig").lua_ls.setup(coq.lsp_ensure_capabilities({
				root_dir = function()
					return vim.fn.getcwd()
				end,
				settings = {
					Lua = {
						hint = { enable = true },
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
							globals = {
								"Citizen",
								"mysql",
								"vim",
								"vector3",
								"vector2",
								"vec3",
								"fx_version",
								"lib",
							},
						},
						workspace = {
							library = library_paths,
							type = { weakUnionCheck = true, weakNilCheck = true },
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
			}))
		end,

		svelte = function()
			require("lspconfig").svelte.setup(coq.lsp_ensure_capabilities({
				root_dir = function()
					return vim.fn.getcwd()
				end,
			}))
		end,
	},
})
