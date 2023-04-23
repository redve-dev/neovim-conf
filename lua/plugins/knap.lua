return {
	"frabjous/knap",
	config = function()
		local kmap = vim.keymap.set

		local knap = require("knap")
		-- F7 toggles the auto-processing on and off
		kmap('i','<F12>', function() knap.toggle_autopreviewing() end)
		kmap('v','<F12>', function() knap.toggle_autopreviewing() end)
		kmap('n','<F12>', function() knap.toggle_autopreviewing() end)
		local gknapsettings = {
			texoutputext = "pdf",
			textopdf = "pdflatex -synctex=1 -halt-on-error -interaction=batchmode %docroot%",
			textopdfviewerlaunch = "sioyek --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,%3)\"' --new-window %outputfile%",
			textopdfviewerrefresh = "none",
			textopdfforwardjump = "sioyek --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,%3)\"' --reuse-window --forward-search-file %srcfile% --forward-search-line %line% %outputfile%",
		}
		vim.g.knap_settings = gknapsettings
	end
}
