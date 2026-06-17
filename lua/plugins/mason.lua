return {
    "https://github.com/mason-org/mason.nvim",
    build = ":MasonUpdate", -- Update the registry of installable tools
    config = function()
        require("mason").setup()
    end,
}
