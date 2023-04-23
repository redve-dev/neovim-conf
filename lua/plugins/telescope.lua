return {
	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function ()
		require("telescope").setup({
			defaults = {
			},

			pickers = {
				find_files = {
					theme = "dropdown",
				},
			},

			extensions = {
				file_browser = {
					theme = "ivy",
					hijack_netrw = true,
				},
			}
		})

		require("telescope").load_extension("file_browser")
	end
}
