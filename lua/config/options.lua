-- Set global defaults
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- WSL Clipboard support
if vim.fn.has("wsl") == 1 then
	vim.api.nvim_set_option("clipboard", "unnamedplus")
	vim.g.clipboard = {
		name = "WslClipboard",
		copy = {
			["+"] = "clip.exe",
			["*"] = "clip.exe",
		},
		paste = {
			["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
			["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		},
		cache_enabled = 0,
	}
end

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
