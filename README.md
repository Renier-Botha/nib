# nib

```
███╗   ██╗██╗██████╗
████╗  ██║██║██╔══██╗
██╔██╗ ██║██║██████╔╝
██║╚██╗██║██║██╔══██╗
██║ ╚████║██║██████╔╝
╚═╝  ╚═══╝╚═╝╚═════╝
```

A Neovim configuration built for writing first, coding second — like the tip of a
fountain pen: small, precise, and pointed at the page.

## What's inside

- **Writing**: [obsidian.nvim](https://github.com/epwalsh/obsidian.nvim) for notes,
  quiet colorschemes ([gruvbox](https://github.com/ellisonleao/gruvbox.nvim) and
  [flexoki](https://github.com/kepano/flexoki-neovim))
- **Files**: [oil.nvim](https://github.com/stevearc/oil.nvim) for editing directories
  like buffers (`-`), plus a toggleable file tree sidebar (`<leader>e`)
- **Finding things**: [snacks.nvim](https://github.com/folke/snacks.nvim) picker for
  files (`<leader><leader>`), buffers (`<leader>,`), and project-wide grep (`<leader>/`)
- **Editing**: treesitter, autopairs, surround, flash, comment
- **Coding support**: LSP via mason, formatting via conform, diagnostics via trouble
- **Git**: gitsigns and diffview

Plugins are managed with [lazy.nvim](https://github.com/folke/lazy.nvim); each plugin
lives in its own file under `lua/plugins/`.

## Guiding principle

Coding tools are supporting infrastructure, not the point. If a plugin doesn't make
writing or light development better, it doesn't need to be here.
