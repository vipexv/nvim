return {
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.gruvbox_material_enable_italic = false
		vim.g.gruvbox_material_transparent_background = true
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
