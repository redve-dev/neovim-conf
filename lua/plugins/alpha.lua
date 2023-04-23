--local present, alpha = pcall(require, "alpha")
--if not present then
	--return
--end

--local header = {
	--type = "text",
	--val = {
		--"                                                     ",
		--"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
		--"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
		--"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
		--"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
		--"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
		--"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
		--"                                                     ",
	--},
	--opts = {
		--position = "center",
		--hl = "Comment",
	--},
--}

--local quote = [[
--"First, solve the problem.
--Then, write the code."
--]]
--local quoteAuthor = "John Johnson"
--local fullQuote = quote .. "\n \n                  - " .. quoteAuthor

--local fortune = {
	--type = "text",
	--val = fullQuote,
	--opts = {
		--position = "center",
		--hl = "Comment",
	--},
--}

--local function button(sc, txt, keybind)
	--local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

	--local opts = {
		--position = "center",
		--text = txt,
		--shortcut = sc,
		--cursor = 6,
		--width = 19,
		--align_shortcut = "right",
		--hl_shortcut = "Number",
		--hl = "Function",
	--}
	--if keybind then
		--opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
	--end

	--return {
		--type = "button",
		--val = txt,
		--on_press = function()
			--local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
			--vim.api.nvim_feedkeys(key, "normal", false)
		--end,
		--opts = opts,
	--}
--end

--local buttons = {
	--type = "group",
	--val = {
		--button("c", "   Create", ":ene<CR>"),
		--button("m", "   Lazy", ":Lazy<CR>"),
		--button("t", "   Telescope", ":Telescope find_files<CR>"),
		--button("q", "   Quit", ":qa!<CR>"),
	--},
	--opts = {
		--position = "center",
		--spacing = 1,
	--},
--}

--local section = {
	--header = header,
	--buttons = buttons,
	--footer = fortune,
--}

--local opts = {
	--layout = {
		--{ type = "padding", val = 3 },
		--section.header,
		--{ type = "padding", val = 3 },
		--section.buttons,
		--{ type = "padding", val = 2 },
		--section.footer,
	--},
	--opts = {
		--margin = 44,
	--},
--}
--alpha.setup(opts)

return {
	"goolord/alpha-nvim",
	dependencies = {
		"kyazdani42/nvim-web-devicons"
	},
	config = function()
		require('alpha').setup(
		require("alpha.themes.startify").config
		)
	end
}
