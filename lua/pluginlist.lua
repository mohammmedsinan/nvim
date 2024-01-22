return {
--[[
	{ 'numToStr/Comment.nvim', opts = {} },
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end
	},
	]]
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
	},
{

		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {}
	},
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

	'folke/neodev.nvim', -- new

	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets',
			'hrsh7th/cmp-nvim-lsp',
		},
	},

	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
	},


	{
		'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	{
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'make',
	},
	{"nvim-tree/nvim-tree.lua"},
	{
		"ThePrimeagen/harpoon",
		lazy = false,
		dependencies = { "nvim-lua/plenary.nvim", },
		config = true,
		keys = {
			{ "<C-x>x", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
			{ "<C-s>", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Go to next harpoon mark" },
			{ "<C-a>", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Go to previous harpoon mark" },
			{ "<C-z>z", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
		},
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		config = function()
			require("lualine").setup({
				icons_enabled = true,
				theme = 'onedark',
			})
		end,
	},
	{"sbdchd/neoformat"},
	{"/dstein64/vim-startuptime"},
}
