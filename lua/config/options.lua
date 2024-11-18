-- Set global defaults
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- This is the only way I have been able to get the formatter
-- to not go crazy in the work project
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "/home/jpope/development/Pulse-UI/*",
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.expandtab = true
	end,
})
