return {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000, -- Load this theme before all other plugins
    config = function()
        vim.o.background = "light" -- Use the light variant
        vim.cmd.colorscheme("gruvbox") -- Activate the theme here
    end,
}
