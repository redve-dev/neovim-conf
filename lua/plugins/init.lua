local ui_plugins = {
	"kyazdani42/nvim-web-devicons",
	{
		"folke/trouble.nvim", config = function()
			require("trouble").setup()
		end
	},
}

local tools_plugins = {
	"jbyuki/nabla.nvim",
	"windwp/nvim-autopairs",
	"preservim/nerdcommenter",
	"mg979/vim-visual-multi",
	"nvim-lua/plenary.nvim",
	"github/copilot.vim",
	"sindrets/diffview.nvim",
	{
		"smjonas/inc-rename.nvim", config = function()
			require("inc_rename").setup()
		end
	},
	{
		"kylechui/nvim-surround", config = function()
			require("nvim-surround").setup()
		end
	},
	{
		"iamcco/markdown-preview.nvim",
		build = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	{
		'stevearc/aerial.nvim', config = function()
			require('aerial').setup()
		end
	},

	{
		"redve-dev/CommitReminder", config = function()
			require("CommitReminder").setup{
				remind_on_save_only = true,
				delay=5,
				required_changes=18
			}
		end
	},

}

local color_schemes = {
	"Yazeed1s/minimal.nvim",
	"navarasu/onedark.nvim"
}

local visual_support_plugins = {
	"nvim-treesitter/playground",
	"nvim-lualine/lualine.nvim",
	"lukas-reineke/indent-blankline.nvim",
	"Pocco81/true-zen.nvim",
	"norcalli/nvim-colorizer.lua",
	"stevearc/dressing.nvim",
	{
		"folke/twilight.nvim",	config = function()
			require("twilight").setup {}
		end
	},
	{
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim", config = function()
			require("lsp_lines").setup()
		end
	},
}

local lsp_plugins = {
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
}

return {
	ui_plugins,
	tools_plugins,
	color_schemes,
	visual_support_plugins,
	lsp_plugins,
}
