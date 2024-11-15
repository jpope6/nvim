return {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	config = function()
		local telescope = require('telescope')

		telescope.setup({})

		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
		vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
	end,
}
