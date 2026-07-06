-- https://github.com/windwp/nvim-autopairs
return {
	"https://github.com/windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {
		check_ts = true, -- Use treesitter to skip pairing where it doesn't make sense (e.g. inside strings)
	},
}
