require("toggleterm").setup({
	direction = "float",
	autochdir = true,
	open_mapping = [[<c-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
	float_opts = {
		border = "curved",
	},
})
