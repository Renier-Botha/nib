-- https://github.com/folke/snacks.nvim
return {
	"https://github.com/folke/snacks.nvim",
	priority = 1000, -- Load early; some modules want to hook in before other UI
	lazy = false,
	keys = {
		-- Picker keymaps, mirroring the old fzf.vim bindings.
		{
			"<leader><leader>",
			function()
				Snacks.picker.files()
			end,
			desc = "Find files",
		},
		{
			"<leader>,",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Find buffers",
		},
		{
			"<leader>/",
			function()
				Snacks.picker.grep()
			end,
			desc = "Search project",
		},
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "Toggle file explorer",
		},
		{
			"<leader>fz",
			function()
				Snacks.picker.zoxide()
			end,
			desc = "Jump to directory (zoxide)",
		},
		{
			"<leader>z",
			function()
				Snacks.zen()
			end,
			desc = "Toggle zen mode",
		},
	},
	---@type snacks.Config
	opts = {
		-- Auto-enabling feature modules: these activate themselves on startup
		-- based on the `enabled` flag. Flip one to true to experiment with it.
		bigfile = { enabled = true }, -- Disable expensive features on very large files so they don't lag
		notifier = { enabled = true }, -- Pretty notification popups instead of the default message flashes
		words = { enabled = true }, -- Highlight other usages of the word under the cursor (LSP references)
		dashboard = { -- Start screen (recent files, projects, ASCII header)
			enabled = true,
			preset = {
				header = [[
███╗   ██╗██╗██████╗
████╗  ██║██║██╔══██╗
██╔██╗ ██║██║██████╔╝
██║╚██╗██║██║██╔══██╗
██║ ╚████║██║██████╔╝
╚═╝  ╚═══╝╚═╝╚═════╝
                a config for writing]],
			},
		},
		explorer = { enabled = true }, -- File tree (built on the picker; needs picker too)
		indent = { enabled = false }, -- Indent guides + scope highlighting (overlaps indent-blankline)
		input = { enabled = false }, -- Prettier vim.ui.input popups
		picker = { enabled = true }, -- Fuzzy finder; on so obsidian.nvim can use it (fzf.vim keymaps untouched)
		quickfile = { enabled = false }, -- Render a file before plugins load, for faster startup
		scope = { enabled = false }, -- Scope detection / text objects based on indent
		scroll = { enabled = false }, -- Smooth scrolling animation
		statuscolumn = { enabled = false }, -- Nicer line-number / sign / fold column
		image = { enabled = true }, -- Inline image previews (works in Ghostty via the kitty graphics protocol)
		zen = { -- Distraction-free mode (toggled with <leader>z); also dims text outside the current scope
			toggles = {
				dim = true,
			},
		},

		-- On-demand modules: these have no auto-enable toggle. You invoke them
		-- via their Snacks.<name> API or a keymap. Listed here for discovery:
		--   Snacks.dim()             -- dim inactive code blocks
		--   Snacks.terminal()        -- toggleable floating terminal
		--   Snacks.lazygit()         -- lazygit in a float (overlaps your lazygit plugin)
		--   Snacks.gitbrowse()       -- open the current line on the git remote
		--   Snacks.scratch()         -- scratch buffer
		--   Snacks.rename.rename_file() -- rename a file + fix LSP references
		--   Snacks.bufdelete()       -- delete a buffer without wrecking the window layout
		--   Snacks.toggle...         -- build toggle mappings (e.g. for options)
		--   Snacks.profiler...       -- startup / runtime profiler
	},
}
