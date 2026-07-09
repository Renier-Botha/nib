-- View error in a floating window

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = "Show [d]iagnostic error" });

-- Jump to the next/previous error
vim.keymap.set('n', '[d', vim.diagnostic.jump, { desc = "Go to previous diagnostic" });

