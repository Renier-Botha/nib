vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.undofile = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.g.mapleader = " "

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0 -- set to 0 to default to tabstop value

--[[ vim.cmd("colorscheme habamax") ]]

vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<leader>rn", ":set relativenumber!<CR>", { desc = "Toggle relative line numbers", silent = true })

-- Copy file path
vim.keymap.set("n", "<leader>fp", function()
	vim.fn.setreg("+", vim.fn.expand("%"))
end, { desc = "Copy relative file path" })
vim.keymap.set("n", "<leader>fa", function()
	vim.fn.setreg("+", vim.fn.expand("%:p"))
end, { desc = "Copy absolute file path" })
vim.keymap.set("n", "<leader>ft", function()
	vim.fn.setreg("+", vim.fn.expand("%:t"))
end, { desc = "Copy file name" })
