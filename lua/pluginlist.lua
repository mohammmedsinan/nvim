return {

	-- in your lazy.nvim plugins table
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = true,
				popup_border_style = "rounded",
				enable_git_status = false,
				enable_diagnostics = false,
				window = {
					position = "right",
					width = 26,
					mappings = {
						["<space>"] = "toggle_node",
						["<cr>"] = "open",
						["S"] = "open_split",
						["s"] = "open_vsplit",
						["C"] = "close_node",
						["R"] = "refresh",
						["a"] = {
							"add",
							config = {
								show_path = "relative"
							}
						},
						["d"] = "delete",
						["r"] = "rename",
						["y"] = "copy_to_clipboard",
						["x"] = "cut_to_clipboard",
						["p"] = "paste_from_clipboard",
						["q"] = "close_window",
					}
				}
			})
		end,
		keys = {
			{ "<leader>b", "<cmd>Neotree toggle<cr>", desc = "Toggle Neotree" },
		},
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim"
		}
	},
	{
		'mawkler/modicator.nvim',
		dependencies = 'mawkler/onedark.nvim', -- Add your colorscheme plugin here
		init = function()
			vim.o.cursorline = true
			vim.o.number = true
			vim.o.termguicolors = true
		end,
		opts = {
			show_warnings = true,
		}
	},
	{
		"supermaven-inc/supermaven-nvim",
		config = function()
			require("supermaven-nvim").setup({
				keymaps = {
					accept_suggestion = '<C-y>',   -- Optional: Accept the current suggestion
					accept_word = '<C-n>',        -- Optional: Accept a single word
					clear_suggestion = '<C-e>',   -- Optional: Clear the current suggestion
				},
			})
		end,
	},
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
			{ "<C-q>q", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
			{ "<C-s>", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Go to next harpoon mark" },
			{ "<C-a>", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Go to previous harpoon mark" },
			{ "<C-w>w", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
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
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	}
}
