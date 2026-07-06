-- https://github.com/kylechui/nvim-surround
-- Default keymaps:
--   ys{motion}{char}  add surround        e.g. ysiw" -> "word"
--   cs{old}{new}      change surround     e.g. cs"'  -> 'word'
--   ds{char}          delete surround     e.g. ds"   -> word
return {
	"https://github.com/kylechui/nvim-surround",
	event = "VeryLazy",
	opts = {},
}
