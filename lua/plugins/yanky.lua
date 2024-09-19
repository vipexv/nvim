return {
	"gbprod/yanky.nvim",
	desc = "Better Yank/Paste",
	opts = {
		highlight = { timer = 150 },
		history_length = 20,
		system_clipboard = {
			sync_with_ring = true, -- Sync with the system clipboard
		},
	},
	keys = {
		{
			"<leader>ppp",
			function()
				require("telescope").extensions.yank_history.yank_history({})
			end,
			mode = { "n", "x" },
			desc = "Open Yank History",
		},
		{ "y",  '"*y',                                    mode = { "n", "x" },                           desc = "Yank Text to Clipboard" }, -- Yank to system clipboard
		{ "Y",  '"*YY',                                   desc = "Yank Whole Line to Clipboard" }, -- Yank whole line to system clipboard
		{ "p",  '"*p',                                    mode = { "n", "x" },                           desc = "Put Text from Clipboard After Cursor" }, -- Paste from system clipboard
		{ "P",  '"*P',                                    mode = { "n", "x" },                           desc = "Put Text from Clipboard Before Cursor" }, -- Paste from system clipboard
		{ "gp", "<Plug>(YankyGPutAfter)",                 mode = { "n", "x" },                           desc = "Put Text After Selection" },
		{ "gP", "<Plug>(YankyGPutBefore)",                mode = { "n", "x" },                           desc = "Put Text Before Selection" },
		{ "[y", "<Plug>(YankyCycleForward)",              desc = "Cycle Forward Through Yank History" },
		{ "]y", "<Plug>(YankyCycleBackward)",             desc = "Cycle Backward Through Yank History" },
		{ "]p", "<Plug>(YankyPutIndentAfterLinewise)",    desc = "Put Indented After Cursor (Linewise)" },
		{ "[p", "<Plug>(YankyPutIndentBeforeLinewise)",   desc = "Put Indented Before Cursor (Linewise)" },
		{ "]P", "<Plug>(YankyPutIndentAfterLinewise)",    desc = "Put Indented After Cursor (Linewise)" },
		{ "[P", "<Plug>(YankyPutIndentBeforeLinewise)",   desc = "Put Indented Before Cursor (Linewise)" },
		{ ">p", "<Plug>(YankyPutIndentAfterShiftRight)",  desc = "Put and Indent Right" },
		{ "<p", "<Plug>(YankyPutIndentAfterShiftLeft)",   desc = "Put and Indent Left" },
		{ ">P", "<Plug>(YankyPutIndentBeforeShiftRight)", desc = "Put Before and Indent Right" },
		{ "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)",  desc = "Put Before and Indent Left" },
		{ "=p", "<Plug>(YankyPutAfterFilter)",            desc = "Put After Applying a Filter" },
		{ "=P", "<Plug>(YankyPutBeforeFilter)",           desc = "Put Before Applying a Filter" },
	},
}
