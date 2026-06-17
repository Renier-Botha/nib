return {
    "https://github.com/stevearc/oil.nvim",
    config = function()
        require("oil").setup({
            opts = {
                default_file_explorer = true
            }
        })
    end,
    keys = {
        { "-", "<Cmd>Oil<CR>", desc = "Browse files from here" }
    }
}
