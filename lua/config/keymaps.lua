-- Diagnostic navigation
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Next Diagnostic" })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Previous Diagnostic" })

-- Error navigation
vim.keymap.set('n', ']e', function()
	vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Next Error" })

vim.keymap.set('n', '[e', function()
	vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Previous Error" })

-- Warning navigation
vim.keymap.set('n', ']w', function()
	vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })
end, { desc = "Next Warning" })

vim.keymap.set('n', '[w', function()
	vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })
end, { desc = "Previous Warning" })
