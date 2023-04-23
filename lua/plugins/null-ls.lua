return {
	"jose-elias-alvarez/null-ls.nvim",
	config = function ()
		local null_ls = require("null-ls")
		local b = null_ls.builtins
		null_ls.setup({
			sources = {
				b.formatting.stylua,
				b.formatting.prettier,
				b.formatting.eslint_d,
				b.formatting.black,
				b.formatting.shfmt,
				b.formatting.clang_format,
				b.formatting.goimports,
				b.formatting.gofumpt,
				b.formatting.gofmt,
				b.formatting.rustfmt,
				b.formatting.sqlformat,
				b.formatting.trim_whitespace,
				b.formatting.lua_format,
			}
		})
	end
}
