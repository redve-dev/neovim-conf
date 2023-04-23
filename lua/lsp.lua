vim.g.completeopt="menu,menuone,noselect,noinsert"
-- Setup nvim-cmp.
local cmp = require'cmp'
local types = require('cmp.types')

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<CR>"] = cmp.mapping.confirm ( { select = false } ),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "i", "s" }),
		['<Down>'] = cmp.mapping({
			i = cmp.mapping.select_next_item({ behavior = types.cmp.SelectBehavior.Select }),
			c = function(fallback)
				cmp.close()
				vim.schedule(cmp.suspend())
				fallback()
			end,
		}),

		['<Up>'] = cmp.mapping({
			i = cmp.mapping.select_prev_item({ behavior = types.cmp.SelectBehavior.Select }),
			c = function(fallback)
				cmp.close()
				vim.schedule(cmp.suspend())
				fallback()
			end,
		}),
	}),
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'buffer' },
	}
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
	sources = cmp.config.sources({
		{ name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
	}, {
		{ name = 'buffer' },
	})
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})
-- Setup lspconfig.

vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=red guibg=#1f2335]]

local border = {
	{"╭", "FloatBorder"},
	{"─", "FloatBorder"},
	{"╮", "FloatBorder"},
	{"│", "FloatBorder"},
	{"╯", "FloatBorder"},
	{"─", "FloatBorder"},
	{"╰", "FloatBorder"},
	{"│", "FloatBorder"},
}

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
	opts = opts or {}
	opts.border = opts.border or border
	return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

vim.diagnostic.config({
	virtual_text = false,
})

--local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local mason = require('mason')
local mason_lsp = require('mason-lspconfig')
local lspconfig=require('lspconfig')
mason.setup()
mason_lsp.setup()

local lsp_servers = {'pyright', 'clangd', 'lua_ls', 'jsonls', 'texlab', 'bashls'}
for _, lsp_server in pairs(lsp_servers) do
	lspconfig[lsp_server].setup{}
end

lspconfig.lua_ls.setup{
	settings = {
		Lua = {
			diagnostics = {
				globals = {'vim'}
			}
		}
	}
}
