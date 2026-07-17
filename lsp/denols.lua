---@brief
---
--- https://docs.deno.com/runtime/fundamentals/lsp/
---
--- Deno language server (`denols`).
---
--- Installed via mason as `deno` and started with `deno lsp`.

---@type vim.lsp.Config
return {
  cmd = { 'deno', 'lsp' },
  filetypes = {
    'javascript',
    'javascriptreact',
    'javascript.jsx',
    'typescript',
    'typescriptreact',
    'typescript.tsx',
  },
  root_markers = { 'deno.json', 'deno.jsonc' },
  settings = {
    deno = {
      enable = true,
      lint = true,
    },
  },
}
