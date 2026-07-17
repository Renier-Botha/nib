local function is_deno_project(ctx)
    local file = ctx.filename
    if not file or file == "" then return false end

    local root = vim.fs.dirname(file)
    return vim.fs.find({ "deno.json", "deno.jsonc" }, { upward = true, path = root })[1] ~= nil
end

return {
    "https://github.com/stevearc/conform.nvim",
    event = { "BufWritePre" }, -- Load just before the first save (for format-on-save)
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>f",
            function() require("conform").format({ async = true, lsp_format = "fallback" }) end,
            mode = { "n", "v" },
            desc = "Format buffer",
        },
    },
    opts = {
        formatters = {
            -- Use `deno fmt` only when editing inside a Deno project.
            deno_fmt = {
                condition = is_deno_project,
            },
        },
        formatters_by_ft = {
            lua = { "stylua" },
            rust = { "rustfmt", lsp_format = "fallback" },
            -- In Deno projects, prefer deno fmt; otherwise use prettierd/prettier.
            javascript = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
            javascriptreact = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
            typescript = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
            typescriptreact = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
            json = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
            jsonc = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
            yaml = { "prettierd", "prettier", stop_after_first = true },
            html = { "prettierd", "prettier", stop_after_first = true },
            css = { "prettierd", "prettier", stop_after_first = true },
            markdown = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback", -- Fall back to LSP formatting when no formatter is configured
        },
    },
}
