return {
	"xiyaowong/nvim-transparent",
	config = function()
		require("transparent").setup({
			extra_goups = {
				"LineNr",
			},
		})
	end
}
