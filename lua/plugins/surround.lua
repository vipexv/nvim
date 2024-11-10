return {
	"echasnovski/mini.surround",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("mini.surround").setup()
	end,
	version = false,
}
