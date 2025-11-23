return {
	{
		'stevearc/conform.nvim',
		event = 'BufWritePre',
		opts = require 'configs.conform',
	},
	{
		'neovim/nvim-lspconfig',
		config = function()
			require 'configs.lspconfig'
		end,
	},
	{
		'stevearc/dressing.nvim',
		lazy = false,
		opts = {},
	},
	{
		'mfussenegger/nvim-lint',
		event = 'VeryLazy',
		config = function()
			require 'configs.lint'
		end,
	},
	{
		'nvim-treesitter/nvim-treesitter',
		opts = {
			ensure_installed = {
				'html',
				'css',
				'javascript',
				'typescript',
			},
		},
	},
	{
		'windwp/nvim-ts-autotag',
		event = 'VeryLazy',
		config = function()
			require('nvim-ts-autotag').setup()
		end,
	},
	{
		'max397574/better-escape.nvim',
		event = 'InsertEnter',
		config = function()
			require('better_escape').setup()
		end,
	},
}
