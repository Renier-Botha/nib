return {
    "kepano/flexoki-neovim",
    name = "flexoki",
    priority = 1000, -- Load this theme before all other plugins
    config = function()
        vim.cmd.colorscheme("flexoki-dark") -- Activate the theme here
    end,
}
