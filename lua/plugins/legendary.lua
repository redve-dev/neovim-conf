return {
'mrjones2014/legendary.nvim',
config = function()
	require('legendary').setup({
		keymaps = {
			{"<F1>", "gg=G", description = 'Reindent whole file'},
			{"<F11>", {n=":set relativenumber!<CR>", i="<Esc>:set relativenumber!<CR>"}, description = 'toggle relative line number'},
			{"<F2>", {n="A;<Esc>", i="<Esc>A;"}, description = 'Add \';\' at the end of line'},
			{"<F9>", ":NvimTreeToggle<CR>", description = 'Toggle nvimtree'},
			{"<leader>rn", {n=":IncRename "}, description = 'Increname'},
			{"<leader>k", {n=":lua vim.lsp.buf.hover()<CR>"}, description = 'show lsp errors' },
			{"<leader>df", {n=":lua vim.diagnostic.open_float()<CR>"}, description = 'open float error window'},
			{"<leader>dp", {n=":lua vim.diagnostic.goto_prev()<CR>"}, description = 'Go to previous error'},
			{"<leader>dn", {n=":lua vim.diagnostic.goto_next()<CR>"}, description = 'Go to next error'},
			{"<leader>ff", {n=":Telescope find_files<CR>"}, description = 'Open telescope'},
			{"<leader>zz", {n=":TZMinimalist<CR>"}, description = 'Zen-mode'},
			{"<leader>p", {n=":lua require(\"nabla\").popup()<CR>"}, description = 'Show compiled latex'},
			{"K", mode={'v'}, ":m '<-2<CR>gv=gv"},
			{"J", mode={'v'}, ":m '>+1<CR>gv=gv"},
			{"<C-d>", mode={'n'}, "<C-d>zz"},
			{"<C-u>", mode={'n'}, "<C-u>zz"},
			{"gpd", {n=":lua require('goto-preview').goto_preview_definition()<CR>"}, description = 'Go to definition'},
			{"gpt", {n=":lua require('goto-preview').goto_preview_type_definition()<CR>"}, description = 'Go to type definition'},
			{"gP", {n=":lua require('goto-preview').close_all_win()<CR>"}, description = 'Go to type definition'},
			{"gA", {n=":AerialToggle<CR>"}, definition = "Toggle Aerial"},
			{"<leader>fb", {n=":Telescope file_browser<CR>"}, description = "Telescope file browser"},
			{"<F3>", ":Cmake", description = 'save, compile, and run project'},
		},

		commands = {

		},

		funcs = {

		},

		autocmds = {
			{
				'BufEnter',
				'set formatoptions-=cro'
			},
			{
				'BufEnter',
				'setlocal formatoptions-=cro'
			}
		},
	})
end
}
