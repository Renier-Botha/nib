return {
    "mistweaverco/kulala.nvim",
    ft = { "http", "rest" }, -- only load when opening .http/.rest files
    keys = {
        { "<Leader>Rs", function() require("kulala").run() end, desc = "Send request", ft = { "http", "rest" } },
        { "<Leader>Ra", function() require("kulala").run_all() end, desc = "Send all requests", ft = { "http", "rest" } },
        { "<Leader>Rp", function() require("kulala").jump_prev() end, desc = "Previous request", ft = { "http", "rest" } },
        { "<Leader>Rn", function() require("kulala").jump_next() end, desc = "Next request", ft = { "http", "rest" } },
    },
    opts = {}, -- lazy.nvim passes this table to require("kulala").setup()
}
