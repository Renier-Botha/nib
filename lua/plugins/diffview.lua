-- https://github.com/sindrets/diffview.nvim
return {
	"https://github.com/sindrets/diffview.nvim",
	cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
	keys = {
		{
			"<leader>gd",
			function()
				-- Toggle: close the diffview tab if one is open, otherwise open one
				if next(require("diffview.lib").views) ~= nil then
					vim.cmd("DiffviewClose")
				else
					vim.cmd("DiffviewOpen")
				end
			end,
			desc = "Diff working tree (toggle)",
		},
		{ "<leader>gf", "<cmd>DiffviewFileHistory %<cr>", desc = "File history (current file)" },
		{ "<leader>gF", "<cmd>DiffviewFileHistory<cr>", desc = "File history (repo)" },
	},
	opts = {},
}
