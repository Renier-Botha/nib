return {
    "https://github.com/stevearc/oil.nvim",
    opts = { -- lazy.nvim passes this table to require("oil").setup()
        default_file_explorer = true,
    },
    keys = {
        { "-", "<Cmd>Oil<CR>", desc = "Browse files from here" }
    }
}
