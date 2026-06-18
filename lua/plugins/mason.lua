return {
    "https://github.com/mason-org/mason.nvim",
    build = ":MasonUpdate", -- Update the registry of installable tools
    opts = {}, -- lazy.nvim passes this table to require("mason").setup()
}
